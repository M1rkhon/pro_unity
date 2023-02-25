import 'package:flutter/material.dart';

class CardScroll extends StatefulWidget {
  const CardScroll({super.key});

  @override
  State<CardScroll> createState() => _CardScrollState();
}

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
      children: List.generate(11, (index) {
        return Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage('images/$imgUrl'))),
          ),
        );
      }),
    ));
  }
}
