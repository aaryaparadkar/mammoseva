import 'package:flutter/material.dart';
import 'package:test_app/pages/Login.dart';
import 'package:test_app/pages/SignUp.dart';
import 'package:test_app/pages/dashboard.dart';

class LangSelection extends StatefulWidget {
  @override
  _LangSelectionState createState() => _LangSelectionState();
}

class _LangSelectionState extends State<LangSelection> {
  String _selectedLanguage = 'English'; // Default selected language

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
                  width: 300, // Set the width of the container
                  child: Text(
                    'Select your preferred language to continue:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 'English',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value as String;
                          // Add logic to change language to English
                        });
                      },
                    ),
                    Text('English'),
                    Radio(
                      value: 'Hindi',
                      groupValue: _selectedLanguage,
                      onChanged: (value) {
                        setState(() {
                          _selectedLanguage = value as String;
                          // Add logic to change language to Hindi
                        });
                      },
                    ),
                    Text('Hindi'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
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
                  child: Text('Get Started'),
                ),
                SizedBox(height: 10),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Dashboard()),
                //     );
                //   },
                //   style: ButtonStyle(
                //     shape: MaterialStateProperty.all(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.zero,
                //       ),
                //     ),
                //     backgroundColor: MaterialStateProperty.all(
                //       Colors.pink, // Set the background color here
                //     ),
                //     foregroundColor: MaterialStateProperty.all(
                //       Colors.white, // Set the text color here
                //     ),
                //   ),
                //   child: Text('Login'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
