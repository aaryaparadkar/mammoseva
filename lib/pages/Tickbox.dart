import 'package:flutter/material.dart';

class TickBoxRow extends StatefulWidget {
  @override
  _TickBoxRowState createState() => _TickBoxRowState();
}

class _TickBoxRowState extends State<TickBoxRow> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isCheckedLast = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked1 = !isChecked1;
            });
          },
          child: Container(
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: isChecked1
                  ? Color.fromRGBO(206, 25, 106, 1.0)
                  : Color.fromARGB(255, 255, 142, 180),
              borderRadius: BorderRadius.circular(3),
            ),
            child: isChecked1
                ? Icon(Icons.check, color: Colors.white, size: 16)
                : SizedBox(width: 16, height: 16),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked2 = !isChecked2;
            });
          },
          child: Container(
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: isChecked2
                  ? Color.fromRGBO(206, 25, 106, 1.0)
                  : const Color(0XFFFFCFDF),
              borderRadius: BorderRadius.circular(3),
            ),
            child: isChecked2
                ? Icon(Icons.check, color: Colors.white, size: 16)
                : SizedBox(width: 16, height: 16),
          ),
        ),
        for (int i = 0; i < 5; i++)
          Container(
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: const Color(0XFFFFCFDF),
              borderRadius: BorderRadius.circular(3),
            ),
            child: SizedBox(width: 16, height: 16),
          ),
        GestureDetector(
          onTap: () {
            setState(() {
              isCheckedLast = !isCheckedLast;
            });
          },
          child: Container(
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: isCheckedLast
                  ? Color.fromRGBO(206, 25, 106, 1.0)
                  : Color.fromARGB(255, 255, 142, 180),
              borderRadius: BorderRadius.circular(3),
            ),
            child: isCheckedLast
                ? Icon(Icons.check, color: Colors.white, size: 16)
                : SizedBox(width: 16, height: 16),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TickBoxRow(),
  ));
}
