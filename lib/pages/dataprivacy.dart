import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:test_app/pages/profile.dart';

class DataPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Privacy'),
        centerTitle: true,
        backgroundColor: Color(0XFFEFB4C8),
      ),
      backgroundColor: Color(0XFFEFB4C8),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Privacy Policy',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Thank you for using our Breast Cancer Awareness app. We are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you use our app.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '1. Information We Collect',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'We may collect personal information that you voluntarily provide to us when using our app, such as your name, email address, and menstrual cycle data. We use this information to provide personalized features and improve your experience with the app.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '2. How We Use Your Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'We use the information we collect to analyze trends, administer the app, track user movements, and gather demographic information for aggregate use. Your personal information will never be shared with third parties without your consent.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '3. Data Security',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'We implement reasonable security measures to protect the security of your personal information both online and offline. However, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee absolute security.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '4. Changes to This Privacy Policy',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'We reserve the right to update or change our Privacy Policy at any time. Your continued use of the app after any modifications to the Privacy Policy will constitute your acknowledgment of the modifications and your consent to abide and be bound by the updated Privacy Policy.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
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