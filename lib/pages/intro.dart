import 'package:flutter/material.dart';
import 'package:test_app/pages/SignUp.dart';
// import 'package:test_app/pages/dashboard.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 255, 195, 215),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/meditation.png',
                    width: 200, // Set the width of the image
                    height: 200, // Set the height of the image
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  width: 300, // Set the width of the image
                  height: 300,
                  child: const Text(
                    'orem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit tristique venenatis. Suspendisse efficitur um l',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
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
                    'Get Started',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
