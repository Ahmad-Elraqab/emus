import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';
import 'package:template/base/routers/router.gr.dart';
import 'package:template/presentation/package_details/package_details.dart';

class DestinationBox extends StatelessWidget {
  const DestinationBox({
    super.key,
    this.isPadding = true,
  });

  final bool isPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: isPadding ? 16 : 0),
            child: ListView.builder(
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () =>
                      context.router.push(const PackageDetailsRouter()),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 45),
                    child: Column(
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
                          child: SizedBox(
                            height: 250.0,
                            width: MediaQuery.sizeOf(context).width - 70,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ListView.builder(
                                  physics: const PageScrollPhysics(),
                                  itemCount: 4,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Container(
                                    height: 250.0,
                                    width:
                                        MediaQuery.sizeOf(context).width - 40,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/1.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 9,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      for (var i = 0; i < 5; i++)
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 9),
                                          child: const CircleAvatar(
                                            radius: 3,
                                            backgroundColor: Colors.white,
                                            // backgroundColor: controllerView
                                            //             .offset <=
                                            //         (i + 1) *
                                            //             (MediaQuery.sizeOf(
                                            //                         context)
                                            //                     .width -
                                            //                 40)
                                            //     ? Colors.white
                                            //     : Colors.white.withOpacity(.5),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    scale: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text(
                            '4D3N BUDGET/ROMANTIC MALDIVES',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              height: 1.2,
                              fontFamily: 'Helvetica',
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'RM 1880.00   ',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica',
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFF1AE00),
                                  ),
                                ),
                                TextSpan(
                                  text: 'RM 5188.00',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    decorationThickness: 1,
                                    fontFamily: 'Helvetica',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
