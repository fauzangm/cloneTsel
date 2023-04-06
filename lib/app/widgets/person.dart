import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Container(
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Icon(Icons.person_rounded),
          )),
        ));
  }
}
