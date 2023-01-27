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
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
    'images/testLogo2.png',
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: GestureDetector(
            child: Container(
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Text('Want_U'),
            ),
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: ((context) => OpenPage())));
            // },
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 2,
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'APPLE',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Tab(
                  child: Text(
                "SAMSUNG",
                style: TextStyle(color: Colors.blue),
              )),
              Tab(
                  child: Text(
                "LG",
                style: TextStyle(color: Colors.redAccent),
              )),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Tab(
              child: GridView.builder(
                  itemCount: 11, //item 개수
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
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.2,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('${appleImage[index]}'),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    border: Border.all(
                                        width: 1, color: Colors.green),
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
                  itemCount: 11, //item 개수
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                    childAspectRatio: 1 / 1.5, //item 의 가로 1, 세로 2 의 비율
                    mainAxisSpacing: 10, //수평 Padding
                    crossAxisSpacing: 10, //수직 Padding
                  ),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            Container(
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.2,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.green),
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
                    );
                  }))),
          Tab(
              child: GridView.builder(
                  itemCount: 11, //item 개수
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
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.2,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.green),
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
