import 'package:flutter/material.dart';
import 'package:furniture_app_ui/data/data.dart';
import 'package:furniture_app_ui/models/chair.dart';
import 'package:furniture_app_ui/screens/details_screen.dart';

class PopularProducts extends StatelessWidget {
  _buildPopularProducts(BuildContext context, int index) {
    Chair chair = popular[index];
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
          children: [
            Container(
              width: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 20.0,
                    )
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 190.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      color: chair.backgorundColor),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image(
                      height: 200.0,
                      width: 200.0,
                      image: AssetImage(chair.imageUrl),
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      chair.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          chair.color,
                          style: TextStyle(fontSize: 14.0, color: Colors.black26),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          '\$' + chair.price.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      chair.type,
                      style: TextStyle(color: Colors.black26, fontSize: 12.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(chair.rating.toString()),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Icon(Icons.add, color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: popular.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPopularProducts(context, index);
          }),
    );
  }
}
