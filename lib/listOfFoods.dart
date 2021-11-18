import 'package:flutter/material.dart';

class food extends StatefulWidget {
  @override
  foodState createState() => foodState();
}

class foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/cookie.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Cookie",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/burger.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Burger",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/cake.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Cakes",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/pizza.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Text(
                          "Pizza",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 50,
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        child: Image.asset(
                          "images/hotdog.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Hotdog",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "images/fries.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Text(
                          "Fries",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Container(
                            child: IconButton(
                                onPressed: () {
                                  print('Pressed');
                                },
                                icon: Icon(Icons.navigate_next))),
                      ),
                    ],
                  ),
                ]),
              ]),
        ),
      ]),
    );
  }
}
