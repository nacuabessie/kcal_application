import 'package:flutter/material.dart';
import 'package:kcal_application/favoriteButton.dart';

class home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<home> {
  int _selectedIndex = 0;
  final screens = [
    Homepage(),
    Searchpage(),
    Camerapage(),
    favorite(),
    Userpage()
  ];

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: ('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_camera_rounded,
              color: Colors.green[200],
            ),
            label: ('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.red[300],
            ),
            label: ('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            label: ('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[400],
        onTap: onTapped,
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Container(
            child: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        )),
      ),
    );
  }
}

class Searchpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Container(
            color: Colors.green[300],
            child: Text(
              "Search",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            )),
      ),
    );
  }
}

class Camerapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Container(
          child: Center(
        child: Text(
          "Camera",
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      )),
    );
  }
}

class Userpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Container(
        color: Colors.green[300],
        child: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
