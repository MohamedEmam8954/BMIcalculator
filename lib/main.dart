import 'package:bmicalculator/views/Home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bmicalculator());
}

class Bmicalculator extends StatelessWidget {
  const Bmicalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_view(),
    );
  }
}
