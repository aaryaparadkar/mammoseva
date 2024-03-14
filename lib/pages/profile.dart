import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:test_app/pages/records.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:test_app/pages/intro.dart';
import 'package:test_app/pages/personalinfo.dart';
import 'package:test_app/pages/dataprivacy.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor:
            Color(0XFFEFB4C8), // Set the background color for the AppBar
      ),
      backgroundColor:
          Color(0XFFEFB4C8), // Set the background color for the entire page
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pfp.jpg'),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Handle edit button tap
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Hello, Sneha!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Information'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfo()),
                );
                // Handle personal information tap
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              leading: Icon(Icons.folder),
              title: Text('Records'),
              trailing: Icon(Icons.arrow_forward_ios),
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
            margin: EdgeInsets.symmetric(
                horizontal: 16.0), // Add gap from left and right
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 235, 150, 178), // Set background color for the container
              borderRadius: BorderRadius.circular(10.0), // Add rounded borders
            ),
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataPrivacy()),
                );
                // Handle data privacy tap
              },
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Intro())); // Handle logout button tap
                  },
                  child: Text('Logout'),
                ),
              ),
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
        iconSize: 30, // Adjust the icon size as needed
        gapLocation: GapLocation.none, // Keep icons centered
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
