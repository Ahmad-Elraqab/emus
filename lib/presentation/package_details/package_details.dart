import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';
import 'dart:math' as math;

class PackageDetails extends StatefulWidget {
  const PackageDetails({super.key});

  @override
  State<PackageDetails> createState() => _PackageDetailsState();
}

class _PackageDetailsState extends State<PackageDetails> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20.0,
        ),
        backgroundColor: primary,
        shadowColor: Colors.transparent,
        titleSpacing: 0.0,
        title: const Text(
          'Package Details',
          style: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 18),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  controller: _controller,
                  padding: const EdgeInsets.only(left: 18),
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => setState(() {}),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width - 50,
                          padding: EdgeInsets.zero,
                          margin: const EdgeInsets.only(right: 8.0),
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/${index + 1}.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              SizedBox(
                height: 75,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 14.0),
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
                          width: 80,
                          padding: EdgeInsets.zero,
                          margin: const EdgeInsets.only(left: 8.0),
                          height: 75,
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
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/${index + 1}.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '4D3N BUDGET/ROMANTIC MALDIVES',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        height: 2,
                      ),
                    ),
                    const Text(
                      '4D3N BUDGET/ROMANTIC MALDIVES',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          height: 1.5),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'RM 1880.00',
                          style: TextStyle(
                            height: 1.5,
                            color: primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'RM 1880.00',
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2.0,
                            decorationColor: primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Available Tickets',
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
              const SizedBox(height: 15),
              SizedBox(
                height: 250,
                width: MediaQuery.sizeOf(context).width,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 14.0),
                  physics: const PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.hardEdge,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: Colors.grey.shade200,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width - 50,
                        ),
                      ),
                      Positioned(
                          right: 20,
                          top: 55,
                          child: Image.asset(
                            'assets/images/qr.png',
                            scale: 1.5,
                          )),
                      Positioned(
                        top: 14.0,
                        left: 18.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '4D3N BUDGET/ROMANTIC MALDIVES',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                height: 1.5,
                              ),
                            ),
                            const Text(
                              '4D3N BUDGET/ROMANTIC MALDIVES',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  height: 1.5),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'RM 1880.00',
                                  style: TextStyle(
                                    height: 2,
                                    color: primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  'RM 1880.00',
                                  style: TextStyle(
                                    height: 1.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 2.0,
                                    decorationColor: primary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 45.0,
                        left: 35.0,
                        child: SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Kuala Lumpur',
                                style: TextStyle(
                                  height: 1.5,
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                'London',
                                style: TextStyle(
                                  height: 1.5,
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 20.0,
                        left: 35.0,
                        child: SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '22/06 - 18:35',
                                style: TextStyle(
                                  height: 1.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                '23/06 - 06:15',
                                style: TextStyle(
                                  height: 1.5,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 81,
                        child: SizedBox(
                            width: MediaQuery.sizeOf(context).width - 30,
                            child: const Text(
                              '  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                      Positioned(
                        bottom: 75.0,
                        left: 4.0,
                        child: SizedBox(
                          height: 30.0,
                          width: 30.0,
                          child: ClipPath(
                            clipper: ClipPathClass(),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 65,
                        left: MediaQuery.sizeOf(context).width / 2.7,
                        child: Image.asset(
                          'assets/images/plane.png',
                          scale: 1.1,
                        ),
                      ),
                      Positioned(
                        bottom: 75.0,
                        right: 4.0,
                        child: Transform.rotate(
                          angle: math.pi / 180 * 180,
                          child: SizedBox(
                            height: 30.0,
                            width: 30.0,
                            child: ClipPath(
                              clipper: ClipPathClass(),
                              child: Container(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
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
                              image:
                                  AssetImage('assets/images/${index + 1}.jpg'),
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
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);

    path.quadraticBezierTo(size.width, size.height / 2, 0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
