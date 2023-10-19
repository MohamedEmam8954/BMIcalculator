import 'dart:math';

import 'package:bmicalculator/views/bmiresult.dart';
import 'package:flutter/material.dart';

class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  int height = 60, weight = 30, age = 0;
  bool ismale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0a0f1e),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "BMICALCULATOR",
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: ismale
                                ? Colors.blue
                                : const Color(0xff1b2d57).withOpacity(0.3),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xff1b2d57).withOpacity(0.02),
                                  spreadRadius: 2,
                                  blurRadius: 2),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/male.png",
                                width: 60,
                                height: 60,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "male",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //////////////////////////////////////////////////////
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: !ismale
                                ? Colors.blue
                                : const Color(0xff1b2d57).withOpacity(0.3),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color(0xff1b2d57).withOpacity(0.02),
                                  spreadRadius: 2,
                                  blurRadius: 2),
                            ],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/female.png",
                                width: 60,
                                height: 60,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "female",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff1b2d57).withOpacity(0.3),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xff1b2d57).withOpacity(0.02),
                          spreadRadius: 2,
                          blurRadius: 2),
                    ],
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "$height",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Slider(
                        allowedInteraction: SliderInteraction.tapAndSlide,
                        min: 60,
                        max: 200,
                        value: height.toDouble(),
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            height = value.round();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff1b2d57).withOpacity(0.3),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xff1b2d57).withOpacity(0.02),
                                spreadRadius: 2,
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 241, 211, 211)),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) weight--;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.blue.withOpacity(0.0),
                                              spreadRadius: 10,
                                              blurRadius: 10)
                                        ]),
                                    child: const Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 180,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xff1b2d57).withOpacity(0.3),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    const Color(0xff1b2d57).withOpacity(0.02),
                                spreadRadius: 2,
                                blurRadius: 2),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) age--;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.blue.withOpacity(0.0),
                                              spreadRadius: 10,
                                              blurRadius: 10)
                                        ]),
                                    child: const Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 55,
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  var result = weight + pow(height / 100, 2);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Bmiresult(
                      result: result.round(),
                      gender: ismale,
                      age: age,
                    ),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
