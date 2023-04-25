import 'package:flutter/material.dart';
import '/main_drawer.dart';
import './favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        //initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Maestro Meals"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: "Categories",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: "Favourites",
                )
              ],
            ),
          ),
          drawer: MainDrawer(),
          body: TabBarView(
            children: [CategoriesScreen(), FavouritesScreen()],
          ),
        ));
  }
}
