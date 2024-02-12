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
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                Text(
                  "How to make french\ntoast",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    color: Color(0xff333333),
                  ),
                ),
                const SizedBox(height: 10.0),
                BannerSection(
                  bgImg: "ui-assets/img/banner.png",
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.star, color: Colors.orange),
                      onPressed: () {},
                    ),
                    const Text(
                      "4.5",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(width: 7.0),
                    const Text(
                      "(300 Reviews)",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "ui-assets/img/profile-img.png",
                      width: 50.0,
                      height: 50.0,
                    ),
                    const SizedBox(width: 10.0),
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
                            ),
                            const SizedBox(width: 5.0),
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
                    Spacer(),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 0.0)),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          child: const Text(
                            "Follow",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Ingredients",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                    ),
                    const Text(
                      "5 items",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    CardSection(
                      foodImage: "ui-assets/img/bread-and-milk.png",
                      foodName: "Bread",
                      foodWeight: "200g",
                    ),
                    const SizedBox(height: 15),
                    CardSection(
                      foodImage: "ui-assets/img/eggs.png",
                      foodName: "Eggs",
                      foodWeight: "200g",
                    ),
                    const SizedBox(height: 15),
                    CardSection(
                      foodImage: "ui-assets/img/bread-and-milk.png",
                      foodName: "Milk",
                      foodWeight: "200g",
                    ),
                    const SizedBox(height: 15),
                    CardSection(
                      foodImage: "ui-assets/img/bread-and-milk.png",
                      foodName: "Bread",
                      foodWeight: "200g",
                    ),
                    const SizedBox(height: 15),
                    CardSection(
                      foodImage: "ui-assets/img/bread-and-milk.png",
                      foodName: "Eggs",
                      foodWeight: "200g",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  final String foodImage;
  final String foodName;
  final String foodWeight;

  const CardSection({
    Key? key,
    required this.foodImage,
    required this.foodName,
    required this.foodWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFA9A9A9).withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.transparent, width: 2),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(9),
                  child: Image.asset(foodImage, fit: BoxFit.cover),
                ),
                const SizedBox(width: 15),
                Text(
                  foodName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              foodWeight,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xFFA9A9A9),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BannerSection extends StatelessWidget {
  final String bgImg;
  const BannerSection({super.key, required this.bgImg});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(bgImg)),
        ),
        Image.asset("ui-assets/img/play-button.png", fit: BoxFit.contain),
      ],
    );
  }
}
