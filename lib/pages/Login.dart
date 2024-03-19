import 'package:flutter/material.dart';
import 'package:test_app/pages/SignUp.dart';
// import 'package:test_app/pages/Survey.dart';
import 'package:test_app/pages/dashboard.dart';

void main() {
  runApp(MaterialApp(
    title: 'Sign Up',
    home: Login(),
  ));
}

// ignore: use_key_in_widget_constructors
class Login extends StatelessWidget {
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
                decoration: InputDecoration(
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
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: const Text('Log In'),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: const Text('Dont have an account? Click here to SignUp'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
