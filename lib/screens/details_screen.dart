import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture_app_ui/models/chair.dart';
import 'package:furniture_app_ui/screens/cart_screen.dart';

class DetailsScreen extends StatefulWidget {
  final Chair chair;

  const DetailsScreen({Key key, this.chair}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: double.infinity,
                    color: widget.chair.backgorundColor,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image(
                        image: AssetImage(widget.chair.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 30.0,
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 30.0,
                            ),
                            IconButton(
                              icon: Icon(Icons.shopping_bag_outlined),
                              iconSize: 30.0,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => CartScreen(),
                                  ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                child: Text(
                  widget.chair.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  widget.chair.type,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    widget.chair.rating.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 10.0),
                child: Text(
                  widget.chair.description,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black38,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'H: ' + widget.chair.height.toString() + '"',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'W: ' + widget.chair.weight.toString() + ' lbs',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        widget.chair.color,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60.0,
                    width: 220.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                          )
                        ]),
                    child: Center(
                        child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 30.0,
                    )),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
