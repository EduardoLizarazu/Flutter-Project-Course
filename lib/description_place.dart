import 'package:flutter/material.dart';
import 'rating_stars.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description = Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: Text(
            descriptionPlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFF56575a),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: Text(
            descriptionPlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Color(0xFF56575a),
            ),
          ),
        ),
      ],
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        // STARS
        Rating_Stars(stars),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navigate")],
    );
  }
}
