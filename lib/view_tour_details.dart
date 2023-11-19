import 'package:flutter/material.dart';
import 'recent_trips.dart';
import 'exploration.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xF5F5F5), // Background color
          child: Column(
            children: [
              Container(
                width:
                    double.infinity, // Make the container width fill the screen
                height: MediaQuery.of(context).size.height *
                    0.3, // Use a percentage of the screen height
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/elephants.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.account_circle,
                                size: 24,
                                color: Color(0xFFFFC300),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello,',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Zaharah', // Content changes depending on the person
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(), // Push the bell icon to the right
                          GestureDetector(
                            onTap: () {
                              // Handle the click event for the bell image here
                              // You can navigate to the notification page
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Image.asset(
                                  'images/bell.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height:
                              80), // Add some space between the row and the rectangular box
                      Row(
                        children: [
                          Align(
                            alignment: Alignment
                                .bottomLeft, // Align to the bottom left
                            child: Image.asset(
                              'images/upcoming.png', // Replace with your image path
                              width: 40, // Adjust the width as needed
                              height: 40, // Adjust the height as needed
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Upcoming Tours', // Not yet clickable
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ThirdPage()),
                              );
                            },
                            child: Container(
                              width: 140,
                              height: 33,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFC300),
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Center(
                                child: Text(
                                  'Recent Tours', //clickable
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
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
                          builder: (context) =>
                              ThirdPage()), //this takes you to the page that has tour details where all tours are listed
                    );
                  },
                  child: Center(
                    child: Image.asset('images/View_details.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Tour activities ',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1C231F),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      
                        Container(
                          height: 148,
                          width: MediaQuery.of(context).size.width/2,
                          child: Card(
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Adjust corner radius
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExplorationPage(),
                                  ),
                                );
                              },
                    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/exploration.png',
            width: 121,
          ),
          SizedBox(height: 8),  // Adjust the spacing between image and text
          Text(
            'Exploration',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
                            ),
                            
                          ),
                          
                        ),
                      
                     
                      SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          height: 148,
                          width: MediaQuery.of(context).size.width/2,
                          child: Card(
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Handle onTap for this card
                              },
                                    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/charity.png',
            width: 121,
          ),
          SizedBox(height: 8),  // Adjust the spacing between image and text
          Text(
            'Charity',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 148,
                          width: MediaQuery.of(context).size.width/2,
                          child: Card(
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Handle onTap for this card
                              },
                                    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/dawa.png',
            width: 106,
          ),
          SizedBox(height: 8),  // Adjust the spacing between image and text
          Text(
            'Dawah',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          height: 148,
                          width: MediaQuery.of(context).size.width/2,
                          child: Card(
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // Adjust corner radius
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Handle onTap for this card
                              },
                                    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/camping.png',
            width: 90,
          ),
          SizedBox(height: 8),  // Adjust the spacing between image and text
          Text(
            'Camping',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
