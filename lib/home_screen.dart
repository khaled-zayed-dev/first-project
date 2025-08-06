import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(Icons.menu),
        title: Text(
          "Let's play ",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {
              print('alarm');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Searching');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  height: 500,
                  width: 450,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1592194996308-7b43878e84a6?auto=format&fit=crop&w=800&q=60',
                  ),
                ),
                Container(
                  width: 450,
                  color: Colors.black.withOpacity(.7),
                  padding: EdgeInsetsDirectional.symmetric(vertical: 9),
                  child: Center(
                    child: Text(
                      'This is cat',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
