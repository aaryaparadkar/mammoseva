import 'package:flutter/material.dart';
import 'package:test_app/pages/Tickbox.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/gov_schemes.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/self_exam.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          // Text widget for "Already started? click here"
          const Text(
            'Already started? click here',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 10),
          // Add two buttons here
          const SizedBox(height: 10),
          TickBoxRow(),
          Center(
            child: Container(
              padding: const EdgeInsets.all(80.0),
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0XFFFFCFDF),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/meditation.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Periods incoming:5 days',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(206, 25, 106, 1.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'Get ready for the checkup in 2 days',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(206, 25, 106, 1.0),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GovScheme()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.pink, // Set the background color here
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.white, // Set the text color here
                    ),
                  ),
                  child: const Text(
                    'Government Scheme',
                  ),
                ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          Expanded(
            child: SelfExamination(),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: const Color(0XFFFF55AB),
        icons: [Icons.book, Icons.home, Icons.person],
        activeIndex: 1,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        iconSize: 30,
        gapLocation: GapLocation.none,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blogs()));
              break;
            case 1:
              // Navigate to the Dashboard page only if index is not 1
              if (ModalRoute.of(context)!.settings.name != '/dashboard') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              }
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
