import 'package:clone_tsel/app/assets/color.dart';
import 'package:clone_tsel/app/widgets/bantuan.dart';
import 'package:clone_tsel/app/widgets/mail.dart';
import 'package:clone_tsel/app/widgets/riwayat.dart';
import 'package:clone_tsel/app/widgets/splash.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:clone_tsel/app/modules/home/controllers/home_controller.dart';

class MainScreen extends GetView<HomeController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorRed,
        elevation: 0,
        title: RichText(
          text: TextSpan(
              text: "Hai, ",
              style: TextStyle(fontSize: 18),
              children: [
                TextSpan(
                  text: "Fauzan Ghozi Mubarak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ]),
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 20),
              width: 45,
              height: 45,
              child: Image.asset(
                "assets/logo/ic_qrcode.png",
                fit: BoxFit.contain,
              ))
        ],
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClas(),
            child: Container(
              //mengatur ukuran container
              height: 200,
              width: Get.width,
              color: colorRed,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  height: 300,
                  // color: Colors.amber,
                  child: LayoutBuilder(
                      builder: (context, constraint) => Column(
                            children: [
                              ClipPath(
                                clipper: ClipInfoCard(),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(colors: [
                                        colorRedLight,
                                        colorRedDark
                                      ])),
                                  child: ListView(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              "081290112333",
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(right: 20),
                                            width: 120,
                                            child: Image.asset(
                                              "assets/logo/simpati_logo.png",
                                              fit: BoxFit.contain,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Sisa Pulsa Anda",
                                          style: TextStyle(
                                              color: colorWhite,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Rp34.000",
                                              style: TextStyle(
                                                  color: colorWhite,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                // aksi yang dijalankan ketika tombol ditekan
                                              },
                                              child: Text('Isi Pulsa'),
                                              style: ElevatedButton.styleFrom(
                                                elevation:
                                                    2, // nilai elevation untuk efek elevasi
                                                primary:
                                                    colorYellowDark, // warna kuning untuk background
                                                onPrimary: Colors
                                                    .black, // warna hitam untuk teks
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        height: 0.09,
                                        width: Get.width,
                                        color: colorLine,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 20),
                                        child: RichText(
                                          text: TextSpan(
                                              text: "Berlaku sampai ",
                                              style: TextStyle(fontSize: 14),
                                              children: [
                                                TextSpan(
                                                  text: "19 April 2023",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 20),
                                        child: Row(
                                          children: [
                                            Text("Telkomsel POIN",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: colorWhite)),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              margin: EdgeInsets.only(left: 8),
                                              constraints: BoxConstraints(
                                                minWidth:
                                                    0, // nilai minimum lebar
                                                minHeight:
                                                    0, // nilai minimum tinggi
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    colorYellowDark, // warna kuning untuk background
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10), // radius border
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '432',
                                                  style: TextStyle(
                                                    color: Colors
                                                        .black, // warna hitam untuk teks
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          minWidth: 80, // nilai minimum lebar
                                          minHeight: 60, // nilai minimum tinggi
                                        ),
                                        width: 100,
                                        height: 60,
                                        child: ListView(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Internet",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "12.19",
                                                      style: TextStyle(
                                                          color: colorRed,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  TextSpan(
                                                      text: " GB",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[600],
                                                          fontSize: 12))
                                                ]),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          color:
                                              colorWhite, // warna kuning untuk background
                                          borderRadius: BorderRadius.circular(
                                              10), // radius border
                                        ),
                                      ),
                                      SizedBox(width: 16.0),
                                      Container(
                                        constraints: BoxConstraints(
                                          minWidth: 80, // nilai minimum lebar
                                          minHeight: 60, // nilai minimum tinggi
                                        ),
                                        width: 100,
                                        height: 60,
                                        child: ListView(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Telpon",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "0",
                                                      style: TextStyle(
                                                          color: colorRed,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  TextSpan(
                                                      text: " Min",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[600],
                                                          fontSize: 12))
                                                ]),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          color:
                                              colorWhite, // warna kuning untuk background
                                          borderRadius: BorderRadius.circular(
                                              10), // radius border
                                        ),
                                      ),
                                      SizedBox(width: 16.0),
                                      Container(
                                        constraints: BoxConstraints(
                                          minWidth: 80, // nilai minimum lebar
                                          minHeight: 60, // nilai minimum tinggi
                                        ),
                                        width: 100,
                                        height: 60,
                                        child: ListView(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "SMS",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "23",
                                                      style: TextStyle(
                                                          color: colorRed,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18)),
                                                  TextSpan(
                                                      text: " SMS",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.grey[600],
                                                          fontSize: 12))
                                                ]),
                                              ),
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              spreadRadius: 2,
                                              blurRadius: 2,
                                              offset: Offset(0, 1),
                                            ),
                                          ],
                                          color:
                                              colorWhite, // warna kuning untuk background
                                          borderRadius: BorderRadius.circular(
                                              10), // radius border
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                ),
                Container(
                  height: 8,
                  color: colorLine,
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Kategori Paket",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(children: [
                                  CircleAvatar(
                                    radius: 25.0,
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 250, 233),
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                          'assets/logo/internet.png'),
                                    ),
                                    // backgroundImage:
                                    //     AssetImage('assets/logo/internet.png'),
                                  ),
                                  Text(
                                    "Internet",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                ]),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            'assets/logo/phone.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Telpon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child:
                                            Image.asset('assets/logo/chat.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "SMS",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            'assets/logo/plane.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Roaming",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child:
                                            Image.asset('assets/logo/yt.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Hiburan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                            'assets/logo/defend.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Unggulan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child:
                                            Image.asset('assets/logo/sms.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Tersimpan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30.0),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25.0,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 250, 233),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        child:
                                            Image.asset('assets/logo/load.png'),
                                      ),
                                      // backgroundImage:
                                      //     AssetImage('assets/logo/internet.png'),
                                    ),
                                    Text(
                                      "Riwayat",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Terbaru dari Telkomsel",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Lihat Semua",
                                  style:
                                      TextStyle(color: colorRed, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ItemTerbaru(
                                    image: "assets/logo/promo1.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/logo/promo2.jpeg",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cari Voucher, Yuk!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Lihat Semua",
                                  style:
                                      TextStyle(color: colorRed, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ItemTerbaru(
                                    image: "assets/logo/voucher1.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/logo/voucher2.png",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }
}

class ClipPathClas extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoCard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 70, size.height);
    path.lineTo(size.width, size.height - 70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
