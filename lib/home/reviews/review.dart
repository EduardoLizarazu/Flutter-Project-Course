import 'package:flutter/material.dart';
import 'rating_stars.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comments = 'There is an amazing place in Sri Lanka';
  double calif_number;
  Review(this.pathImage, this.name, this.details, this.comments,
      this.calif_number);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        comments,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        //Rating_Stars(5),
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: const Text(
            'Rating_Stars(4.5)',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            ),
          ),
        )
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // APILAMIENTO
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );
    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
