import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 10
            ),
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('ToDo List',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
