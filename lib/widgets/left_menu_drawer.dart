import 'package:ch8_drawer/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';

class LeftDrawerWidget extends StatefulWidget {
  const LeftDrawerWidget({super.key});

  @override
  State<LeftDrawerWidget> createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.black,
            ),
            accountName: Text(
              'Davis',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'fmutalipov7@gmail.com',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.black,
              )
            ],
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/mountain.jpeg'),
                    fit: BoxFit.cover)),
          ),
          const MenuListTileWidget()
        ],
      ),
    );
  }
}
