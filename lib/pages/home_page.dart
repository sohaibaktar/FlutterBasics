import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  final int day = 35;
  final String name = "sohaib";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $day day flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
