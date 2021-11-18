import 'package:flutter/material.dart';
import 'package:kcal_application/listOfFoods.dart';

class favorite extends StatefulWidget {
  @override
  favoriteState createState() => favoriteState();
}

class favoriteState extends State<favorite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Favorites",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Column(
                children: [
                  Container(
                      height: 60,
                      width: 500,
                      child: TabBar(
                        unselectedLabelColor: Colors.green[300],
                        indicator: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(8)),
                        tabs: [
                          Tab(text: 'Foods'),
                          Tab(text: 'Recipes'),
                        ],
                      ))
                ],
              )),
              SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    Container(
                      child: food(),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'No Recipes Found',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
