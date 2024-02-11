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
          body: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(children: [
              // Header text description
              Row(
                children: [
                  Text(
                    "How to make french toast",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0),
                  ),
                ],
              ),
              // Banner Image
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "ui-assets/img/banner.png",
                      // width: 20.0,
                      // height: 20.0,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),

              // Ratings and reviews
              Column(children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        // Handle the arrow button press
                      },
                    ),
                    Row(
                      children: [
                        Text(
                          "4,5",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 5.0)),
                        Text(
                          "(300 Reviews)",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w200,
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Text(
                //       "4,5",
                //       textDirection: TextDirection.ltr,
                //       style: TextStyle(
                //           fontFamily: "Poppins",
                //           fontWeight: FontWeight.w700,
                //           fontSize: 10.0),
                //     ),
                //   ],
                // ),
              ])
            ]),
          )),
    );
  }
}
