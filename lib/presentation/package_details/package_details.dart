import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';

import 'package:template/presentation/widgets/custom_app_bar.dart';
import 'package:template/presentation/widgets/search_box.dart';

class PackageDetails extends StatefulWidget {
  const PackageDetails({super.key});

  @override
  State<PackageDetails> createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails>
    with SingleTickerProviderStateMixin {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  bool isOpen = false;
  void onClick() => setState(() {
        isOpen = true;
      });
  void onCloseClick() => setState(() {
        isOpen = false;
      });

  final tabs = ['Package', 'Note', 'General Info', 'Media'];
  TabController? controller;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onClick: onClick),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    height: 46,
                    color: const Color(0xFFFEEE9D),
                    padding: const EdgeInsets.symmetric(horizontal: 23.0),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'PACKAGE DETAIL',
                        style: TextStyle(
                          fontFamily: 'Impact',
                          fontSize: 16,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 183,
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView.builder(
                    controller: _controller,
                    physics: const PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => setState(() {}),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            padding: EdgeInsets.zero,
                            // margin: const EdgeInsets.only(right: 8.0),
                            height: 183,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/${index + 1}.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 13, left: 20, right: 18, bottom: 20),
                  height: 79,
                  width: MediaQuery.sizeOf(context).width,
                  child: ListView.builder(
                    physics: const PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => _controller.animateTo(
                            (index + 1) * 360 - 360,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeOutQuad,
                          ),
                          child: Container(
                            width: 79,
                            padding: EdgeInsets.zero,
                            margin: const EdgeInsets.only(right: 13.0),
                            height: 79,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4.0,
                                  strokeAlign: 1,
                                  color:
                                      _controller.offset <= (index + 1) * 360 &&
                                              _controller.offset >=
                                                  (index + 1) * 360 - 360
                                          ? primary
                                          : Colors.transparent),
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/${index + 1}.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    '4D3N BUDGET/ROMANTIC MALDIVES',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Helvetica',
                      fontSize: 28.0,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                DefaultTabController(
                  initialIndex: 0,
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.black,
                        controller: controller,
                        onTap: (value) => {setState(() {})},
                        tabs: [
                          ...tabs.map(
                            (e) => Tab(
                              child: Text(
                                e,
                                style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 18,
                                  fontWeight:
                                      controller!.index == tabs.indexOf(e)
                                          ? FontWeight.w700
                                          : FontWeight.normal,
                                  color: controller!.index == tabs.indexOf(e)
                                      ? Colors.black
                                      : const Color(0xFF0073F6),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints.loose(
                            const Size(double.maxFinite, double.maxFinite)),
                        // height: double.maxFinite,
                        child: TabBarView(
                          physics: const PageScrollPhysics(),
                          children: [
                            _buildPackageTab(),
                            const SizedBox(),
                            const SizedBox(),
                            const SizedBox(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            if (isOpen) SearchBox(onClick: onCloseClick),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageTab() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 51,
              margin: const EdgeInsets.only(top: 24, bottom: 26),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFEEEEEE),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Date',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 18,
                    ),
                  ),
                  Image(
                    height: 16.4,
                    width: 15,
                    image: AssetImage('assets/images/date_4x.png'),
                  )
                ],
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Departure',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 8),
                Image(
                    height: 13,
                    width: 8.5,
                    image: AssetImage('assets/images/d_arrows.png')),
                Expanded(child: SizedBox()),
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: 7),
                Image(
                    height: 13,
                    width: 8.5,
                    image: AssetImage('assets/images/d_arrows.png')),
              ],
            ),
            const SizedBox(height: 18),
            ListView.builder(
              itemCount: 10,
              controller: scrollController,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(bottom: 18),
                padding: const EdgeInsets.only(
                    left: 23, right: 21, bottom: 21, top: 26),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFEEEEEE),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Available',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF6DA544),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '9D7N Fascination Turkiye -2 Night Cave Hotel (01 Way Domestic)',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Departure',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: '   17-09-2023',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 23),
                    const Text(
                      'RM 1880.00',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'RM 5188.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          iconPath: 'plane_4x',
                          title: 'Flight Detail',
                          onClick: () => {},
                        ),
                        _buildButton(
                          iconPath: 'download_4x',
                          title: 'Download Itinerary',
                          onClick: () => {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  Widget _buildButton({String? iconPath, String? title, Function? onClick}) {
    return InkWell(
      onTap: () => onClick!(),
      child: Container(
        width: 144,
        height: 66,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 17,
              width: 17,
              image: AssetImage('assets/images/${iconPath!}.png'),
            ),
            const SizedBox(height: 7),
            Text(
              title!.toString(),
              style: const TextStyle(
                fontFamily: 'Helvetica',
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
