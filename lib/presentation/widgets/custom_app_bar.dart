import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.onClick,
  });

  final Function? onClick;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60.0,
      backgroundColor: primary,
      leadingWidth: MediaQuery.sizeOf(context).width - 75,
      leading: Align(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () => onClick!(),
          child: Container(
            margin: const EdgeInsets.only(left: 20),
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
                      color: Colors.black,
                      fontFamily: 'Helvetica',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // leadingWidth: 130,
      // leading: Container(
      //   margin: const EdgeInsets.only(left: 24.0),
      //   child: Image.asset(
      //     'assets/images/logo.png',
      //     scale: 12,
      //   ),
      // ),
      shadowColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: Image.asset('assets/images/menu.png'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}
