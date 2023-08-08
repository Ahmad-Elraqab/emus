import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key, this.onClick});

  final Function? onClick;
  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 22),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Search by keyword',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'Helvetica',
              fontSize: 16,
            ),
          ),
          const SizedBox(
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
          const Row(
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
          const SizedBox(
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
          InkWell(
            onTap: () => widget.onClick!(),
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
      ),
    );
  }
}
