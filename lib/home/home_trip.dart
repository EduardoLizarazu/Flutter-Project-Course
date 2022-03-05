import 'package:flutter/material.dart';
import 'reviews/review_list.dart';

import 'description_place.dart';
import 'header/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String descriptionDummy =
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem Sed ut perspiciatis unde omnis iste natus error sit voluptatem";
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("EEUU", 4.5, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
