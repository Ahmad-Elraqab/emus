import 'package:flutter/material.dart';
import 'package:template/presentation/widgets/destination_box.dart';

class TourPage extends StatefulWidget {
  const TourPage({super.key});

  @override
  State<TourPage> createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: DestinationBox(isPadding: false)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
