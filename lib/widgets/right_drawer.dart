import 'package:ch8_drawer/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';

class RightDrawerWidget extends StatefulWidget {
  const RightDrawerWidget({super.key});

  @override
  State<RightDrawerWidget> createState() => _RightDrawerWidgetState();
}

class _RightDrawerWidgetState extends State<RightDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Icon(
                Icons.face,
                size: 28.0,
                color: Colors.black,
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mountain.jpeg'),
                      fit: BoxFit.cover))),
          const MenuListTileWidget()
        ],
      ),
    );
  }
}
