import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem ";
    String pathImage = "assets/img/people.jpg";
    String name = "Varuna Yasas";
    String details = "1 review 5 photos";
    String comments = 'There is an amazing place in Sri Lanka';
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(pathImage, name, details, comments, 4.5),
        Review(pathImage, name, details, comments, 4.5),
        Review(pathImage, name, details, comments, 4.5),
      ],
    );
  }
}
