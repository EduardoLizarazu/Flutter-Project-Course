import 'package:flutter/material.dart';
import '../home/home_trip.dart';
import '../search/search_trips.dart';
import '../profile/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
              ),
            ],
          )),
    );
  }
}