import 'package:flutter/material.dart';
import 'package:test_app/pages/Survey.dart';
import 'package:test_app/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Sign Up',
    home: SignUp(),
  ));
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 195, 215),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/meditation.png',
                width: 200.0,
                height: 200.0,
              ),
              const SizedBox(height: 16.0),
              const TextField(
                // ignore: unnecessary_const
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SurveyPage()),
                  );
                },
                child: const Text('Sign Up'),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                },
                child: const Text('Already have an account? Click here to login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
