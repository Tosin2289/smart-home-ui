import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_home_ui/pages/homepage.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          child: Icon(Icons.arrow_forward_ios),
          onPressed: (() {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return HomePage();
            })));
          })),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LottieBuilder.asset('assets/smart.json'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Smart",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
