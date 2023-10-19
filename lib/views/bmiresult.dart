import 'package:flutter/material.dart';

class Bmiresult extends StatelessWidget {
  Bmiresult(
      {super.key,
      required this.gender,
      required this.result,
      required this.age});
  final bool gender;
  final int age;
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BmiResult"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "gender:${gender ? "Male" : "female"}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Result:$result",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Age:$age",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
