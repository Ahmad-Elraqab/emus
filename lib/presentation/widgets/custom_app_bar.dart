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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      shadowColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Image.asset(
            'assets/images/menu.png',
            scale: 3,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(
            Icons.notifications_active_outlined,
            size: 24.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}
