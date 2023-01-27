import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:want_u/screens/index.dart';
import 'package:transition/transition.dart';

class OpenPage extends StatefulWidget {
  const OpenPage({super.key});

  @override
  State<OpenPage> createState() => _OpenPageState();
}

class _OpenPageState extends State<OpenPage> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 2500), () {
      Navigator.push(context,
          Transition(child: Index(), transitionEffect: TransitionEffect.FADE));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/testLogo.jpeg'),
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '신학기 프로모션',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('가격비교 해드립니다',
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold)),
                    Text('<Want_U>',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
