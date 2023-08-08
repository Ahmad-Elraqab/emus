import 'package:flutter/material.dart';
import 'package:template/presentation/widgets/destination_box.dart';

class TourPage extends StatefulWidget {
  const TourPage({super.key});

  @override
  State<TourPage> createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height - 180,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Container(
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 23),
              width: MediaQuery.sizeOf(context).width,
              color: const Color(0xFFFEEE9D),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'TOUR PACKAGE',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Impact',
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isOpen ? _buildSearchBox() : const SizedBox(),
                    InkWell(
                      onTap: () => setState(() {
                        isOpen = true;
                      }),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFFEEE9D),
                        ),
                        height: 40,
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/search.png'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Search',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  height: 1.0,
                                  fontFamily: 'Helvetica',
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (isOpen) ...[
                      InkWell(
                        onTap: () => setState(() {
                          isOpen = false;
                        }),
                        child: const SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              'Close',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                height: 1.0,
                                fontFamily: 'Helvetica',
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                    ],
                    const Expanded(child: DestinationBox(isPadding: false)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _buildSearchBox() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Search by keyword',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontFamily: 'Helvetica',
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(),
              hintText: 'Enter your location name',
            ),
          ),
        ),
        Row(
          children: [
            Image(image: AssetImage('assets/images/date_icon.png')),
            SizedBox(width: 12),
            Text(
              'Select Date',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'Helvetica',
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(),
              hintText: 'Choose your date for travel',
            ),
          ),
        ),
      ],
    );
  }
}
