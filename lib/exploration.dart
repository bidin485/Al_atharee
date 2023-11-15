import 'package:flutter/material.dart';

class ExplorationPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child:CircleAvatar(
                      child: Icon(Icons.chevron_left,size: 15,),
                    ) ,
                  ),
                  SizedBox(width: 20,),
                  Text('Exploration' ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Container(
                    width: 251,
                    height: 148,
                    decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/exploration.png'),
                    fit: BoxFit.cover,
                  ),
                ),

                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
