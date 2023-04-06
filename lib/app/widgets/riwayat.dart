import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RiwayatScreen extends StatelessWidget {
  const RiwayatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Container(
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Icon(Icons.history),
          )),
        ));
  }
}
