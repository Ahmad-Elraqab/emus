import 'package:flutter/material.dart';
import 'package:template/presentation/widgets/destination_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedSearch = 99;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height - 180,
        color: Colors.white,
        child: Column(
          children: [
            _buildTopView(context),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'SELECT ',
                      style: TextStyle(
                        fontFamily: 'Impact',
                        fontSize: 28,
                        color: Color(0xFFFFCB08),
                      ),
                    ),
                    TextSpan(
                      text: 'YOUR DESTINATION',
                      style: TextStyle(
                        fontFamily: 'Impact',
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(child: DestinationBox()),
          ],
        ),
      ),
    );
  }

  SizedBox _buildTopView(BuildContext context) {
    ScrollController controller = ScrollController();
    void _animateFarward() {
      controller.animateTo(controller.offset + MediaQuery.sizeOf(context).width,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }

    void _animateBackward() {
      controller.animateTo(controller.offset - MediaQuery.sizeOf(context).width,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }

    return SizedBox(
      height: 183,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 183,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              controller: controller,
              physics: const PageScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/1.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                'EXOTIC\nSRI LANKA',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            height: 183,
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _animateBackward(),
                  child: Container(
                    width: 25,
                    height: 25,
                    padding: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 14,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _animateFarward(),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 14,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
