
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/proudctGrid.dart';

import 'main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Choose a seed color for the theme
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black26, // Customize AppBar color
        ),
        cardTheme: CardTheme(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: LayoutBuilder(
            builder: (context, constraints) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  size: constraints.maxWidth < 360 ? 24.0 : 30.0,
                  color: Colors.black,// Adjust icon size based on screen width
                ),
                onPressed: () {
                  // Handle menu icon press
                },
              );
            },
          ),
          title: Text(
            'Product Grid',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width < 360 ? 16.0 : 20.0,
              color: Colors.black,// Adjust font size based on screen width
            ),
          ),
          actions: [
            LayoutBuilder(
              builder: (context, constraints) {
                return IconButton(
                  icon: Icon(
                    Icons.search,
                    size: constraints.maxWidth < 360 ? 24.0 : 30.0,
                    color: Colors.black,// Adjust icon size based on screen width
                  ),
                  onPressed: () {
                    // Handle search icon press
                  },
                );
              },
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return IconButton(
                  icon: Icon(
                    Icons.notifications,
                    size: constraints.maxWidth < 360 ? 24.0 : 30.0,
                    color: Colors.black,// Adjust icon size based on screen width
                  ),
                  onPressed: () {
                    // Handle notifications icon press
                  },
                );
              },
            ),
          ],
        ),
        body: ProductGrid(),
      ),
    );
  }
}