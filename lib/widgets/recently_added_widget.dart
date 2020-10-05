import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/data/data.dart';
import 'package:furniture_app_ui/models/chair.dart';
import 'package:furniture_app_ui/screens/details_screen.dart';

class RecentlyAdded extends StatelessWidget {
  _buildRecentProducts(BuildContext context, int index) {
    Chair chair = recentlyAdded[index];
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailsScreen(
                    chair: chair,
                  ),
          ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 25.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 20.0,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    width: 100.0,
                    height: 94.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0)),
                      color: chair.backgorundColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image(
                        height: 200.0,
                        width: 200.0,
                        image: AssetImage(chair.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 140.0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.0, top: 15.0),
                          child: Text(
                            chair.name,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4.0,
                          ),
                          child: Text(
                            chair.color,
                            style: TextStyle(color: Colors.black26),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4.0,
                          ),
                          child: Text(
                            chair.type,
                            style: TextStyle(color: Colors.black26),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4.0,
                          ),
                          child: Text(
                            '\$' + chair.price.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: recentlyAdded.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildRecentProducts(context, index);
          },
        ),
      ),
    );
  }
}
