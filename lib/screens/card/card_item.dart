import 'package:flutter/material.dart';

class CardScroll extends StatefulWidget {
  const CardScroll({super.key});

  @override
  State<CardScroll> createState() => _CardScrollState();
}

List imgList = ['Flutter', 'React Native', 'Python', 'C#'];

class _CardScrollState extends State<CardScroll> {
  final List imgUrl = ['login.png', 'splash_screen.png'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(
          11,
          (index) {
            return Center(
              child: Container(
                width: 165,
                height: 175,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      "images/Flutter.png",
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
