import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/pages/dashboard.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  String? _selectedOption;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 195, 215),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Enter the Present State',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                RadioListTile<String>(
                  title: const Text('Pre-Menstruation'),
                  value: 'Option 1',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Ongoing'),
                  value: 'Option 2',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Post-Menstruation'),
                  value: 'Option 3',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'When Does the Menstruation cycle begins',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'Enter the day of the month here',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_selectedOption != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Please select an option.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      title: 'Survey App',
      home: SurveyPage(),
    ));
  }
}
