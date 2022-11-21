import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviews extends StatefulWidget {
  Gridviews({Key? key}) : super(key: key);

  @override
  State<Gridviews> createState() => _GridviewsState();
}

class _GridviewsState extends State<Gridviews> {
  List mySmartDevices = [
    ['Smart Light', "assets/lightbulb.png", true],
    ['Smart AC', "assets/air-conditioner.png", false],
    ['Smart Tv', "assets/smart-tv.png", false],
    ['Smart Fan', "assets/cooler.png", false],
  ];
  void powerswitch(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: mySmartDevices.length,
          padding: EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1 / 1.3),
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: mySmartDevices[index][2]
                      ? Colors.grey[900]
                      : Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        mySmartDevices[index][1],
                        height: 65,
                        color: mySmartDevices[index][2]
                            ? Colors.white
                            : Colors.black,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                mySmartDevices[index][0],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: mySmartDevices[index][2]
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 2,
                            child: CupertinoSwitch(
                              value: mySmartDevices[index][2],
                              onChanged: ((value) {
                                powerswitch(value, index);
                              }),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
