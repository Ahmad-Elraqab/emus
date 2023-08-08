import 'package:flutter/material.dart';
import 'package:template/base/app/config/app_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60.0,
      backgroundColor: primary,
      leadingWidth: 130,
      leading: Container(
        margin: const EdgeInsets.only(left: 24.0),
        child: Image.asset(
          'assets/images/logo.png',
          scale: 12,
        ),
      ),
      shadowColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () => {},
            icon: Image.asset('assets/images/menu.png'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}
