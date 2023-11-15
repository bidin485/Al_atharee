import 'package:flutter/material.dart';
import 'view_tour_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/backgroundimage.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42.0),
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.yellow],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  print("hello world!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0, // Remove the button elevation
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 106,
            left: 60,
            child: Container(
              width: 220,
              height: 77,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  'Al Atharee Tours',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 286,
            child: Container(
              width: 383,
              height: 293,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.transparent, // Invisible boundary
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Let\'s explore the world the ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'AbrilFatface', // Apply the font
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Halal ',
                        style: TextStyle(
                          color: Colors.yellow, // Yellow for 'Halal'
                          fontSize: 70,
                          fontFamily: 'AbrilFatface', // Apply the font
                        ),
                      ),
                      Text(
                        'way ',
                        style: TextStyle(
                          color: Colors.white, // White for 'way'
                          fontSize: 40,
                          fontFamily: 'AbrilFatface', // Apply the font
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Together!',
                    style: TextStyle(
                      color: Colors.white, // White for 'Together!'
                      fontSize: 40,
                      fontFamily: 'AbrilFatface', // Apply the font
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
