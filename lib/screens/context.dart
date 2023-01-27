import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/productModel.dart';

class ContextScreen extends StatefulWidget {
  const ContextScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.info,
      required this.index,
      required this.ctg});
  final ctg;
  final image;
  final name;
  final info;
  final index;

  @override
  State<ContextScreen> createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {
  List<String> logoImage = [
    'images/appleLogo.png',
    'images/appleLogo.png',
    'images/studentLogo.png',
    'images/coupangLogo.png',
  ];
  List<String> storeText = [
    '공홈',
    '프로모션',
    '복지스토어',
    '쿠팡',
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: getPoductData(widget.ctg),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var f = NumberFormat("###,###,### 원");
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
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${widget.name}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                width: 1))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CPU : ${widget.info.toString().split(' ')[0]}',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'RAM : ${widget.info.toString().split(' ')[1]}',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'SSD : ${widget.info.toString().split(' ')[2]}',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    )),
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
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
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
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          int count = widget.index + index;

                          return Container(
                            width: screenWidth * 0.9,
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1)),
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
                                      child: Text(
                                        '${storeText[index]}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    )),
                                Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        '${f.format(snapshot.data!.productData![count].price)}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Flexible(
                                    flex: 1,
                                    child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: IconButton(
                                            onPressed: (() async {
                                              final url = Uri.parse(
                                                '${snapshot.data!.productData![count].link}',
                                              );
                                              if (await canLaunchUrl(url)) {
                                                launchUrl(url);
                                              } else {
                                                // ignore: avoid_print
                                                print("Can't launch $url");
                                              }
                                            }),
                                            icon: Icon(
                                              Icons.exit_to_app,
                                              color: Colors.white,
                                            )))),
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
        } else {
          return Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }
      },
    );
  }
}
