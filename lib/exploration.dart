import 'package:flutter/material.dart';
import 'package:homepage/view_tour_details.dart';

class ExplorationPage extends StatefulWidget {
  @override
  _ExplorationPageState createState() => _ExplorationPageState();
}

class _ExplorationPageState extends State<ExplorationPage> {
  String selectedItem = ''; // Track the selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/exploration.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondPage(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              Icons.chevron_left,
                              size: 25,
                              color: Color(0xFFE8604C),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Exploration',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSelectableText('images'),
                  buildSelectableText('videos'),
                ],
              ),
            ),
            // Conditional rendering based on the selected item
            if (selectedItem == 'images') ...[
              Container(
                  child: Column(children: [
                Image.asset('images/images.png', fit: BoxFit.cover),
                SizedBox(height: 20),
                Image.asset('images/images.png', fit: BoxFit.cover),
                SizedBox(height: 20),
                Image.asset('images/images.png', fit: BoxFit.cover),
                SizedBox(height: 20),
                Image.asset('images/images.png', fit: BoxFit.cover),
                SizedBox(height: 20),
                Image.asset('images/images.png', fit: BoxFit.cover),
              ])),

              // Add content for images below
            ] else if (selectedItem == 'videos') ...[
              Container(
                child: Image.asset('images/images.png', fit: BoxFit.cover),
              ),
            ]
          ],
        ),
      ),
    );
  }

  // Helper method to build selectable text with GestureDetector
  Widget buildSelectableText(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = text;
        });
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedItem == text ? Colors.orange : Colors.transparent,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            if (selectedItem == text)
              BoxShadow(
                color: Colors.orange,
              ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  // Helper method to build the highlighted box
  Widget buildHighlightedBox(String content) {
    return Container(
      height: 49,
      width: 204,
      color: Colors.orange,
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
