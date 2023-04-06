import 'package:clone_tsel/app/assets/color.dart';
import 'package:clone_tsel/app/widgets/bantuan.dart';
import 'package:clone_tsel/app/widgets/mail.dart';
import 'package:clone_tsel/app/widgets/main.dart';
import 'package:clone_tsel/app/widgets/person.dart';
import 'package:clone_tsel/app/widgets/riwayat.dart';
import 'package:clone_tsel/app/widgets/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controllers/home_controller.dart';

class _HomePageState extends State<HomeView> {
  int pageIndex = 0;
  PageController pageController = PageController();
  final List<Widget> _pages = [
    MainScreen(),
    RiwayatScreen(),
    BantuanScreen(),
    MailScreen(),
    PersonScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [colorRedLight, colorRedDark]),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.work_history_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.work_history_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.help_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.help_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.mail_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeView extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
