import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';
import 'package:template/base/routers/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  List<String> searchFilters = [
    'Near me',
    'Mountain',
    'Beach',
    'Temple',
    'Camping',
    'State'
  ];

  int selectedSearch = 99;

  late bool isFocused = _focusNode.hasFocus;

  setFocused(val) => setState(() => isFocused = val);

  @override
  void initState() {
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _controller.text.isEmpty) {
        setFocused(false);
      } else {
        setFocused(true);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.sizeOf(context).width,
              margin:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
              color: Colors.white,
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIconConstraints: const BoxConstraints(),
                  prefixIcon: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      child: !_focusNode.hasFocus && _controller.text.isEmpty
                          ? const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Search',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 4.0),
                                Icon(Icons.search, color: Colors.black),
                              ],
                            )
                          : const SizedBox()),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: lightColor, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: lightColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: lightColor, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: lightColor, width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 18.0),
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: searchFilters.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => setState(() {
                          selectedSearch = index;
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: selectedSearch == index
                                  ? primary
                                  : Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Colors.grey.shade100,
                            child: Image.asset(
                              'assets/images/${searchFilters[index].toLowerCase()}.png',
                              cacheHeight: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        searchFilters[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: selectedSearch == index
                              ? primary
                              : Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 0.9,
                    ),
                  ),
                  Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 18.0),
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => InkWell(
                  onTap: () =>
                      context.router.push(const PackageDetailsRouter()),
                  child: Card(
                    color: primary,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/${index + 1}.jpg'),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.0, right: 24.0),
                          child: Text(
                            'EXOTIC\nSRI LANKA',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 0.9,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Destinations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 0.9,
                    ),
                  ),
                  Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 0.9,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 18.0),
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemExtent: 300,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      color: primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: 200.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 12.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/${index + 1}.jpg'),
                          ),
                        ),
                        width: MediaQuery.sizeOf(context).width - 70,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                'assets/images/logo.png',
                                scale: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      ' 4D3N BUDGET/ROMANTIC MALDIVES',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        height: 1.5,
                      ),
                    ),
                    const Text(
                      ' 4D3N BUDGET/ROMANTIC MALDIVES',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      ' RM 1880.00',
                      style: TextStyle(
                        height: 1.5,
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
