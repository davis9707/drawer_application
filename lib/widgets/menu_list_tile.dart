import 'package:ch8_drawer/pages/birthday.dart';
import 'package:ch8_drawer/pages/gratitude.dart';
import 'package:ch8_drawer/pages/reminder.dart';
import 'package:flutter/material.dart';

class MenuListTileWidget extends StatefulWidget {
  const MenuListTileWidget({super.key});

  @override
  State<MenuListTileWidget> createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Birthdays()));
          },
        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text('Gratitude'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Gratitude()));
          },
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text('Reminders'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Reminders()));
          },
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
