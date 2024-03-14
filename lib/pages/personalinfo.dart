import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:test_app/pages/profile.dart';

class PersonalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        centerTitle: true,
        backgroundColor: const Color(0XFFEFB4C8),
      ),
      backgroundColor: const Color(0XFFEFB4C8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pfp.jpg'),
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Handle edit button tap
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: const Text('Sneha'),
              onTap: () {
                // Handle name tap
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Address',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: const Text('sneha@gmail.com'),
              onTap: () {
                // Handle email tap
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Periods Date',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              title: const Text('January 1, 2023'),
              onTap: () {
                // Handle periods date tap
              },
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle edit profile button tap
            },
            child: const Text('Edit Profile'),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: const Color(0XFFFF55AB),
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
