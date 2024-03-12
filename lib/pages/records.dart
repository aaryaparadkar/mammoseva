import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:test_app/pages/profile.dart';

class Records extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Records'),
        centerTitle: true,
        backgroundColor: Color(0XFFEFB4C8), // Set the background color for the AppBar
      ),
      backgroundColor: Color(0XFFEFB4C8), // Set the background color for the entire page
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              title: Text('Self-Checkup in Feb'),
              subtitle: Text('Checkup as per schedule'),
              trailing: Icon(Icons.check, size: 40,),
              iconColor: Colors.green,
              onTap: () {
                // Handle personal information tap
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              title: Text('Self-Checkup in Jan'),
              subtitle: Text('Checkup not as per schedule'),
              trailing: Icon(Icons.close, size: 40,),
              iconColor: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Records()),
                );
                // Handle records tap
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              title: Text('Self-Checkup in Dec'),
              subtitle: Text('Checkup not as per schedule'),
              trailing: Icon(Icons.close, size: 40,),
              iconColor: Colors.red,
              onTap: () {
                // Handle data privacy tap
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0XFFFF55AB),
        icons: [Icons.book, Icons.home, Icons.person],
        activeIndex: 0,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blogs()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              break;
          }
        },
      ),
    );
  }
}
