import 'package:flutter/material.dart';
import 'package:test_app/pages/Survey.dart';
import 'package:test_app/pages/dashboard.dart';
// import 'package:test_app/pages/login.dart';

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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? _startDay;
  String? _startMonth;
  String? _endDay;
  String? _endMonth;
  bool _acceptPrivacyPolicy = false;
  bool _isErrorDisplayed = false;

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
                if (_startDay == null ||
                    _startMonth == null ||
                    _endDay == null ||
                    _endMonth == null) {
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
                  // Perform sign-up process
                  // For demonstration purposes, navigate to survey page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
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
                title: Text('Email & Password'),
                content: Column(
                  children: [
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
                    if (_isErrorDisplayed && (emailController.text.isEmpty || passwordController.text.isEmpty))
                      Text(
                        'Both email and password are required',
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
                              _startDay = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Start Day',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              _startMonth = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Start Month',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              _endDay = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'End Day',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: TextField(
                            onChanged: (value) {
                              _endMonth = value;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'End Month',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_isErrorDisplayed &&
                        (_startDay == null ||
                            _startMonth == null ||
                            _endDay == null ||
                            _endMonth == null))
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
