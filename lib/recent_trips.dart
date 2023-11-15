import 'dart:math';

import 'package:flutter/material.dart';
import 'package:homepage/view_tour_details.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xF5F5F5),
          child: Column(
            children: [
              Container(
                width: 428,
                height: 87,
                decoration: BoxDecoration(
                  color: Color(0xFFE8604C),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          // do something
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          maxRadius: 70,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.chevron_left,
                            size: 20,
                            color: Color(0xFFE8604C),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Recent Trips',
                      textAlign: TextAlign.center,
                      selectionColor: Colors.white,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 396,
                height: 234,
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Statistics',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Charities ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another page on image click
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Image.asset('images/View_details.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to another page on image click
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Image.asset('images/View_details.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
