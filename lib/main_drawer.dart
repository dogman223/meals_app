import 'package:flutter/material.dart';

Widget buildListTile(String title, IconData iconData) {
  return ListTile(leading: Icon(iconData, size: 26), title: Text(title));
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
          buildListTile("Meals", Icons.restaurant),
          buildListTile("Filters", Icons.settings),
        ],
      ),
    );
  }
}
