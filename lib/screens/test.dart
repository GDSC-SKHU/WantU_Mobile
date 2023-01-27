import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/productModel.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder(
          future: getPoductData(2),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.productData!.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Text('${snapshot.data!.productData![index].name}'),
                          Text('${snapshot.data!.productData![index].link}')
                        ],
                      ),
                    );
                  }));
            } else {
              return Center(
                child: Text(';'),
              );
            }
          },
        ),
      ),
    );
  }
}
