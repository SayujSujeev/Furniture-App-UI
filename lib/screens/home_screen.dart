import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/custom_icons/custom_icons_icons.dart';
import 'package:furniture_app_ui/data/data.dart';
import 'package:furniture_app_ui/screens/cart_screen.dart';
import 'package:furniture_app_ui/widgets/popular_widgets.dart';
import 'package:furniture_app_ui/widgets/recently_added_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIconIndex = 0;

  Widget _buildCategoryIcon(int index) {
    return Padding(
      padding: EdgeInsets.only(right: 30.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                selectedCategoryIconIndex = index;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 75.0,
                  width: 75.0,
                ),
                Material(
                  color: selectedCategoryIconIndex == index
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(28.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      categoryIcon[index],
                      size: 30.0,
                      color: selectedCategoryIconIndex == index ? Colors.white : Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CustomIcons.short_text,
                      size: 40.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                          iconSize: 30.0,
                        ),
                        IconButton(
                          icon: Icon(Icons.shopping_bag_outlined),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CartScreen(),
                            ),
                          ),
                          iconSize: 30.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20.0),
                    child: Text(
                      'Hey ' + currentUser.name + ',',
                      style: TextStyle(fontSize: 24.0, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                    child: Text(
                      'Explore Your \nFurnitures',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 20.0, top: 10.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryIcon.length,
                      itemBuilder: (context, index) {
                        return _buildCategoryIcon(index);
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  PopularProducts(),
                  Padding(padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Recently Added',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RecentlyAdded(),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
