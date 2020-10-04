import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Helloo Welcome ',style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
