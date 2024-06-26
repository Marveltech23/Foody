import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foody/components/my_current_location.dart';
import 'package:foody/components/my_description_box.dart';
import 'package:foody/components/my_drawer.dart';
import 'package:foody/components/my_foodtile.dart';
import 'package:foody/components/my_sliver_app_bar.dart';
import 'package:foody/components/my_tab_bar.dart';
import 'package:foody/models/food.dart';
import 'package:foody/models/restaurant.dart';
import 'package:foody/pages/food_page.dart';
import 'package:foody/themes/textutils.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  // a mehtod that returns list of food items that belongs to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

// return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemBuilder: (context, index) {
          // get individual food
          final food = categoryMenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPage(food: food))),
          );
        },
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var bs = TextUtils.bodySmall(context);
    var bb = TextUtils.bodyLarge(context);
    var bm = TextUtils.bodyMedium(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
              // ignore: sort_child_properties_last
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  MyCurrentLocation(),
                  // my current location

                  //description

                  const MyDescriptionBox()
                ],
              ),
              title: MytabBar(tabController: _tabController))
        ],
        body: Consumer<Restaurant>(builder: (context, restaurant, child) {
          return TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          );
        }),
      ),
    );
  }
}
