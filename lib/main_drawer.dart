import 'package:flutter/material.dart';

Widget buildListTile(String title, IconData iconData, Function onTapHandler) {
  return ListTile(
    leading: Icon(iconData, size: 26),
    title: Text(title),
    onTap: onTapHandler,
  );
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            child: Text("Cooking Up!"),
          ),
          buildListTile("Meals", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile("Filters", Icons.settings, () {
            Navigator.of(context).pushReplacementNamed('/filters');
          }),
        ],
      ),
    );
  }
}
