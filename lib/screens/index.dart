import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:want_u/screens/context.dart';
import 'package:want_u/screens/open.dart';

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
    'images/ipadAir.jpeg',
    'images/ipadMini.jpeg',
    'images/ipadPro12.jpeg',
  ];
  List<String> samsungImage = [
    'images/galaxyBook2.jpeg',
    'images/galaxyBookPro2.jpeg',
    'images/galaxyBookPro360.jpeg',
    'images/galaxyS8.jpeg',
    'images/galaxyS8+.jpeg',
    'images/galaxyA8.jpeg',
  ];
  List<String> lgImage = [
    'images/macAir.jpeg',
    'images/macPro13.jpeg',
    'images/macPro14.jpeg',
    'images/ipadAir.jpeg',
    'images/ipadMini.jpeg',
    'images/ipadPro12.jpeg',
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
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: GestureDetector(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Want_U',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: ((context) => OpenPage())));
            // },
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 2,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'APPLE',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                  child: Text(
                "SAMSUNG",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
              Tab(
                  child: Text(
                "LG",
                style: TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.bold),
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
                                spreadRadius: 5,
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
                                    Text('item $index'),
                                    Text('price $index')
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
                                  builder: ((context) => ContextScreen())));
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
                                spreadRadius: 5,
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
                                    Text('item $index'),
                                    Text('price $index')
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
                                  builder: ((context) => ContextScreen())));
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
                                spreadRadius: 5,
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
                                    Text('item $index'),
                                    Text('price $index')
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
                                  builder: ((context) => ContextScreen())));
                        },
                      ),
                    );
                  }))),
        ]),
      ),
    );
  }
}
