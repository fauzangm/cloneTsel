import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController phoneC = TextEditingController();
  var checkC = false.obs;

  @override
  void onClose() {
    phoneC.dispose();
    super.onClose();
  }
}
