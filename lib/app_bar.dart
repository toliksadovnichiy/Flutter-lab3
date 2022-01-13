import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final void Function() changeFloatingButton;
  AppBarWidget(this.changeFloatingButton);

  @override
  Widget build(BuildContext context) {
    return getAppBarWidget();
  }

  Widget getAppBarWidget() {
    return AppBar(
        toolbarHeight: 50,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'Twitter',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              changeFloatingButton();
            },
            child: Container(
              child: Icon(Icons.send),
              margin: EdgeInsets.only(right: 10),
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
