import 'package:flutter/material.dart';

class Rating_Stars extends StatelessWidget {
  double calif_number;
  Rating_Stars(this.calif_number);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
        margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: const Icon(
          Icons.star_half,
          color: Color(0xFFf2C611),
        ));
    final star_border = Container(
        margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: const Icon(
          Icons.star_border,
          color: Color(0xFFf2C611),
        ));
    final star = Container(
        margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: const Icon(
          Icons.star,
          color: Color(0xFFf2C611),
        ));

    ratingStars(calif) {
      List<Widget> deployStars = [];
      if (calif >= 0.0 && calif <= 5.0) {
        if (calif % 1 == 0) {
          for (var i = 0; i < calif; i++) {
            deployStars.add(star);
          }
        } else {
          for (var i = 0; i < calif - 2; i++) {
            deployStars.add(star);
          }
          deployStars.add(star_half);
        }
        if (deployStars.length != 5) {
          int listLength = deployStars.length;
          for (var i = listLength; i < 5; i++) {
            deployStars.add(star_border);
          }
        }
      } else {
        print("An error occurred");
      }
      return deployStars;
    }

    return Row(children: ratingStars(calif_number));
  }
}
