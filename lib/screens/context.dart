import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ContextScreen extends StatefulWidget {
  const ContextScreen({super.key, required this.image, required this.name});
  final image;
  final name;

  @override
  State<ContextScreen> createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {
  List<String> logoImage = [
    'images/coupangLogo.png',
    'images/studentLogo.png',
    'images/appleLogo.png',
    'images/appleLogo.png',
    'images/gmarketLogo.png',
  ];
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
          children: [
            Container(
              width: screenWidth * 0.95,
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                  // border: Border.all(width: 1, color: Colors.white),
                  ),
              child: ListView(children: [
                CarouselSlider(
                  items: [
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(25),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 3,
                        //     blurRadius: 3,
                        //     offset: Offset(0, 5),
                        //   )
                        // ],
                        image: DecorationImage(
                          image: AssetImage('${widget.image}'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 3,
                        //     blurRadius: 3,
                        //     offset: Offset(0, 5),
                        //   )
                        // ],
                        // image: DecorationImage(
                        //   image: AssetImage('${widget.image}'),
                        //   fit: BoxFit.fitHeight,
                        // ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('성능'),
                          Text('정보'),
                          Text('보여줄거임'),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: screenHeight * 0.3,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.55,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: screenWidth * 0.9,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.withOpacity(0.5), width: 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35),
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    image: DecorationImage(
                                      image: AssetImage('${logoImage[index]}'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    color: Colors.white),
                              )),
                          Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '판매처 $index',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Flexible(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '가격 $index',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
