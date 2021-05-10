import 'package:flutter/material.dart';
import 'package:chama_app_ui/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text("M-Chama"),
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded),
        iconSize: 28.0,
        onPressed: () {},
      ),

    

      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
