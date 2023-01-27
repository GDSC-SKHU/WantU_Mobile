import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:want_u/screens/context.dart';
import 'package:want_u/screens/open.dart';
import 'package:want_u/screens/test.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<String> appleImage = [
    'images/macAir.jpeg',
    'images/macPro13.jpeg',
    'images/macPro14.jpeg',
    'images/ipadMini.jpeg',
    'images/ipadAir.jpeg',
    'images/ipadPro12.jpeg',
  ];
  List<String> appleProduct = [
    'M2 Macbook Air',
    'M2 Macbook Pro13',
    'M1 Macbook Pro14',
    'Ipad Mini 6th',
    'Ipad Air 5th',
    'Ipad Pro 12.9 6th',
  ];
  List<String> appleProductInfo = [
    'M2 8GB 256GB',
    'M2 8GB 256GB',
    'M1 16GB 512GB',
    'A15 4GB 64GB',
    'M1 8GB 64GB',
    'M2 8GB 128GB',
  ];
  List<int> productIndex = [0, 4, 8, 12, 16, 20];
  List<String> samsungImage = [
    'images/galaxyBookPro360.jpeg',
    'images/galaxyBook2.jpeg',
    'images/galaxyBookPro2.jpeg',
    'images/galaxyS8.jpeg',
    'images/galaxyS8plus.jpeg',
    'images/galaxyA8.jpeg',
  ];
  List<String> samsungProduct = [
    'Galaxy Book Pro2 360',
    'Galaxy Book2',
    'Galaxy Book Pro2',
    'Galaxy S8',
    'Galaxy S8+',
    'Galaxy A8',
  ];
  List<String> samsungProductInfo = [
    'i7-1260P 16GB 512GB',
    'i7-1255U 8GB 256GB',
    'i5-1240p 8GB 256GB',
    '스냅드래곤8Gen1 8GB 128GB',
    '스냅드래곤8Gen1  8GB 128GB',
    'UnisocT618  4GB 64GB',
  ];
  List<String> lgImage = [
    'images/gram14.jpeg',
    'images/gram15.jpeg',
    'images/gram16.jpeg',
  ];
  List<String> lgProduct = [
    'Gram 14',
    'Gram 15',
    'Gram 16',
  ];
  List<String> lgProductInfo = [
    'i5-1340p 16g 512gb',
    'i5-1340p 16g 256gb',
    'i7-1340p 16g 256gb',
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: GestureDetector(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                '< Want_U >',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorWeight: 2,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'APPLE',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Tab(
                  child: Text(
                "SAMSUNG",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
              Tab(
                  child: Text(
                "LG",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Tab(
              child: GridView.builder(
                  itemCount: 6, //item 개수
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1.5, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 10, //수평 Padding
                    crossAxisSpacing: 10, //수직 Padding
                  ),
                  itemBuilder: ((context, index) {
                    int ctg = 2;
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage('${appleImage[index]}'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              Container(
                                height: screenHeight * 0.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${appleProduct[index]}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '최저가 확인하러가기',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                        Icon(
                                          Icons.exit_to_app,
                                          size: 15,
                                          color: Colors.blue,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ContextScreen(
                                        image: appleImage[index],
                                        name: appleProduct[index],
                                        info: appleProductInfo[index],
                                        index: productIndex[index],
                                        ctg: ctg,
                                      ))));
                        },
                      ),
                    );
                  }))),
          Tab(
              child: GridView.builder(
                  itemCount: 6, //item 개수
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1.5, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 10, //수평 Padding
                    crossAxisSpacing: 10, //수직 Padding
                  ),
                  itemBuilder: ((context, index) {
                    int ctg = 1;
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image:
                                          AssetImage('${samsungImage[index]}'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              Container(
                                height: screenHeight * 0.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${samsungProduct[index]}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '최저가 확인하러가기',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                        Icon(
                                          Icons.exit_to_app,
                                          size: 15,
                                          color: Colors.blue,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ContextScreen(
                                        image: samsungImage[index],
                                        name: samsungProduct[index],
                                        info: samsungProductInfo[index],
                                        index: productIndex[index],
                                        ctg: ctg,
                                      ))));
                        },
                      ),
                    );
                  }))),
          Tab(
              child: GridView.builder(
                  itemCount: 3, //item 개수
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1.5, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 10, //수평 Padding
                    crossAxisSpacing: 10, //수직 Padding
                  ),
                  itemBuilder: ((context, index) {
                    int ctg = 3;
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage('${lgImage[index]}'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              Container(
                                height: screenHeight * 0.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${lgProduct[index]}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '최저가 확인하러가기',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                        Icon(
                                          Icons.exit_to_app,
                                          size: 15,
                                          color: Colors.blue,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ContextScreen(
                                        image: lgImage[index],
                                        name: lgProduct[index],
                                        info: lgProductInfo[index],
                                        index: productIndex[index],
                                        ctg: ctg,
                                      ))));
                        },
                      ),
                    );
                  }))),
        ]),
      ),
    );
  }
}
