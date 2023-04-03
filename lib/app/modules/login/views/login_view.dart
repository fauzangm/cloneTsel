import 'package:clone_tsel/app/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clone_tsel/app/assets/color.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Listview membuat layout vertikal
        body: ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            "assets/logo/img_login_header.png",
            width: 150, // menentukan lebar gambar
            height: 150, // menentukan tinggi gambar
            fit: BoxFit
                .contain, // menentukan cara gambar menyesuaikan diri dengan container
            alignment: Alignment.topLeft,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Silahkan masuk dengan nomor telkomsel kamu",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.5),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Text("Nomor HP",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            controller: controller.phoneC,
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: OutlineInputBorder(),
                hintText: "Cth. 08129011xxxx"),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Obx(
                () => Checkbox(
                  activeColor: Colors.red,
                  value: controller.checkC.value,
                  onChanged: (value) => controller.checkC.toggle(),
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(
                      text: "Saya menyetujui ",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Klik syarat");
                        },
                      text: "syarat, ",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Klik ketentuan");
                        },
                      text: "ketentuan",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: ", dan ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Klik privasi");
                        },
                      text: "privasi ",
                      style: TextStyle(color: Colors.red),
                    ),
                    TextSpan(
                      text: "Telkomsel",
                      style: TextStyle(color: Colors.black),
                    ),
                  ])),
            ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text("Masuk", style: TextStyle(color: colorDarkGrey)),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all<Color>(colorLightGrey),
            ),
          ),
        ),
        Center(
          child: Text(
            "Atau masuk menggunakan",
            style: TextStyle(color: colorDarkGrey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //row digunakan untuk membuat layout horizontal
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    //agar gambar dan text ketengah
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo/fb_logo.png"),
                      SizedBox(width: 7),
                      Text("Facebook", style: TextStyle(color: colorDarkGrey)),
                    ],
                  ),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(150, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.blue, width: 1)))),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    //agar gambar dan text ketengah
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/logo/twitter_logo.png"),
                      SizedBox(width: 7),
                      Text("Twitter", style: TextStyle(color: colorDarkGrey)),
                    ],
                  ),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(150, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.blue, width: 1)))),
            ],
          ),
        )
      ],
    ));
  }
}
