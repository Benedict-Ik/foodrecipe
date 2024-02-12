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

            // Parent Column
            child: Column(children: [
              // Header text description
              Row(
                children: [
                  Text(
                    "How to make french\ntoast ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0),
                  ),
                ],
              ),
              // Banner Image
              // Column(
              //   children: [
              //     Stack(
              //       children: [
              //         ClipRRect(
              //           borderRadius: BorderRadius.circular(10.0),
              //           child: Image.asset(
              //             "ui-assets/img/banner.png",
              //             width: double.infinity,
              //             height: 100.0,
              //             fit: BoxFit.contain,
              //           ),
              //         ),
              //         Positioned(
              //           top:
              //               0, // Adjusted to position the image centrally vertically
              //           left:
              //               0, // Adjusted to position the image centrally horizontally
              //           child: Image.asset(
              //             "ui-assets/img/play-button.png",
              //             width: 100.0,
              //             height: 100.0,
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),

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
              ]),

              // Profile section

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "ui-assets/img/profile-img.png",
                        width: 50.0,
                        height: 50.0,
                        // fit: BoxFit.contain,
                      ),
                      SizedBox(
                          width:
                              10), // Add spacing between the profile image and text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Roberta Anny",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "ui-assets/img/location.png",
                                width: 20.0,
                                height: 20.0,
                                // fit: BoxFit.contain,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add spacing between the location icon and text
                              Text(
                                "Bali, Indonesia",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(), // Add spacer to push the follow button to the right
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the follow button press
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Background color
                          onPrimary: Colors.white, // Text color
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: Text("Follow"),
                      ),
                    ],
                  ),
                ],
              ),

              // Card section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.0), // Add vertical padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          "5 items",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Individual Cards
            ]),
          )),
    );
  }
}
