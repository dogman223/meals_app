import 'package:flutter/material.dart';
import '/main_drawer.dart';
import './favourites_screen.dart';
import './categories_screen.dart';
import '/models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;

  TabsScreen(this.favouriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
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
            children: [
              CategoriesScreen(),
              FavouritesScreen(widget.favouriteMeals)
            ],
          ),
        ));
  }
}
