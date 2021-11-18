import 'package:flutter/material.dart';
import 'package:kcal_application/Homepage.dart';
import 'package:kcal_application/content_model.dart';

class onBoard extends StatefulWidget {
  @override
  _onBoardState createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Text(
                          contents[i].name,
                          style: TextStyle(
                              color: Colors.green[300],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                          contents[i].image,
                          height: 300,
                          width: 450,
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length, (index) => buildDot(index, context)),
            ),
          ),
          SizedBox(height: 50),
          Container(
              height: 60,
              width: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => home()));
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[200],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
          SizedBox(height: 20),
          Container(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Already have an Account?",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                      )),
                  TextSpan(
                    text: " Log In",
                    style: TextStyle(
                      color: Colors.green[200],
                      fontSize: 18,
                    ),
                  ),
                ])),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red[200],
      ),
    );
  }
}
