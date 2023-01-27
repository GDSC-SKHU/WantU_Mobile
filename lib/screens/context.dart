import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContextScreen extends StatefulWidget {
  const ContextScreen({super.key});

  @override
  State<ContextScreen> createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.55,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.55 / 5,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              width: screenWidth * 0.9 / 3,
                              height: screenHeight * 0.55 / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Text('Logo $index'),
                            )),
                        Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('판매처 $index'),
                            )),
                        Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('가격 $index'),
                            )),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
