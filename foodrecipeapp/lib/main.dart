import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Food recipe app";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,

      // Defining Appbar
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle the arrow button press
              },
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
