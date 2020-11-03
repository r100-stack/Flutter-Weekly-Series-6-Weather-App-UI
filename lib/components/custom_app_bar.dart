import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Image(
        height: 20.0,
        width: 20.0,
        image: AssetImage('assets/images/custom_menu_icon_5.png'),
      ),
      actions: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 56.0),
          child: Icon(
            Icons.more_horiz,
            color: Color(0xFF333333),
            size: 30.0,
          ),
        )
      ],
    );
  }
}
