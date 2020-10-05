import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app_ui/custom_icons/custom_icons_icons.dart';
import 'package:furniture_app_ui/data/data.dart';
import 'package:furniture_app_ui/models/cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _buildCartItem(Cart cart) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      child: Container(
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 20.0,
              )
            ]),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 94.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    color: cart.chair.backgorundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Image(
                      height: 200.0,
                      width: 200.0,
                      image: AssetImage(cart.chair.imageUrl),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140.0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0, top: 15.0),
                        child: Text(
                          cart.chair.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 140.0,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Text(
                                  cart.chair.color,
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 13.0),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Container(
                              width: 140.0,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Text(
                                  cart.chair.type,
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 12.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                  size: 12.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                cart.quantity.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                  size: 12.0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 140.0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Text(
                          '\$' + cart.chair.price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int productPrice = 0;
    currentUser.cart.forEach(
        (Cart cart) => productPrice += cart.quantity * cart.chair.price);
    int totalPrice = productPrice + 20;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          iconSize: 30.0,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Your Cart',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(CustomIcons.short_text),
            onPressed: () {},
            color: Colors.black,
            iconSize: 30.0,
          )
        ],
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Cart cart = currentUser.cart[index];
            return _buildCartItem(cart);
          }
          return SizedBox(
            height: 300.0,
          );
        },
        itemCount: currentUser.cart.length + 1,
      ),
      bottomSheet: Container(
        height: 260.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(0, -1), blurRadius: 20.0)
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Cost',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '\$${productPrice.toString()}',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Cost',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Cost',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${totalPrice.toString()}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                height: 70.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 2.0),
                        blurRadius: 30.0,
                      )
                    ]),
                child: Center(
                  child: Text(
                    'Check Out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24.0
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
