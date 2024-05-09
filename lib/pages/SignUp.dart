import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'Sign Up',
    home: SignUp(),
  ));
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _currentStep = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? _startDate;
  String? _endDate;
  bool _acceptPrivacyPolicy = false;
  bool _isErrorDisplayed = false;

  Future<void> _submitSignUp() async {
    final url =
        Uri.parse('https://ap-south-1.aws.neurelo.com/rest/UserFields/__one');
    final response = await http.post(
      url,
      body: json.encode({
        'name': nameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'start_date': '$_startDate',
        'end_date': '$_endDate',
        'privacyPolicy': _acceptPrivacyPolicy,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    // Check response status
    if (response.statusCode == 200) {
      // Handle success
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    } else {
      // Handle error
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 195, 215),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 195, 215),
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Stepper(
            type: StepperType.vertical,
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep == 0) {
                if (emailController.text.isEmpty ||
                    passwordController.text.isEmpty) {
                  setState(() {
                    _isErrorDisplayed = true;
                  });
                  return;
                }
              } else if (_currentStep == 1) {
                if (_startDate == null || _endDate == null) {
                  setState(() {
                    _isErrorDisplayed = true;
                  });
                  return;
                }
              } else if (_currentStep == 2) {
                if (!_acceptPrivacyPolicy) {
                  setState(() {
                    _isErrorDisplayed = true;
                  });
                  return;
                }
              }

              setState(() {
                _isErrorDisplayed = false;
                if (_currentStep < 2) {
                  _currentStep++;
                } else {
                  _submitSignUp(); // Call function to submit sign-up data
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0) {
                  _currentStep--;
                  _isErrorDisplayed = false;
                }
              });
            },
            steps: <Step>[
              Step(
                title: Text('Credentials'),
                content: Column(
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    if (_isErrorDisplayed &&
                        (emailController.text.isEmpty ||
                            passwordController.text.isEmpty))
                      Text(
                        'All fields are required',
                        style: TextStyle(color: Colors.red),
                      ),
                  ],
                ),
                isActive: _currentStep >= 0,
                state:
                    _currentStep >= 0 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('Period Dates'),
                content: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              _startDate = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Start Date (DD)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              _endDate = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'End Date (DD)',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_isErrorDisplayed &&
                        (_startDate == null || _endDate == null))
                      Text(
                        'Both start and end dates are required',
                        style: TextStyle(color: Colors.red),
                      ),
                  ],
                ),
                isActive: _currentStep >= 1,
                state:
                    _currentStep >= 1 ? StepState.complete : StepState.disabled,
              ),
              Step(
                title: Text('Privacy Policy'),
                content: Column(
                  children: [
                    Text('Do you accept the app\'s privacy policy?'),
                    Checkbox(
                      value: _acceptPrivacyPolicy,
                      onChanged: (value) {
                        setState(() {
                          _acceptPrivacyPolicy = value ?? false;
                        });
                      },
                    ),
                    if (_isErrorDisplayed && !_acceptPrivacyPolicy)
                      Text(
                        'Please accept the privacy policy',
                        style: TextStyle(color: Colors.red),
                      ),
                  ],
                ),
                isActive: _currentStep >= 2,
                state:
                    _currentStep >= 2 ? StepState.complete : StepState.disabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Dashboard!'),
//       ),
//     );
//   }
// }
