import 'package:flutter/material.dart';
import 'package:islami_4pm/core/widgets/custom_background.dart';
import 'package:islami_4pm/moduls/layout/screens/hadeth_screen.dart';
import 'package:islami_4pm/moduls/layout/screens/quran_screen.dart';
import 'package:islami_4pm/moduls/layout/screens/radio_screen.dart';
import 'package:islami_4pm/moduls/layout/screens/sebha_screen.dart';
import 'package:islami_4pm/moduls/layout/screens/settings_screen.dart';
import 'package:islami_4pm/moduls/layout/widgets/Botton_nav.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = "layoutScreen";

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex= 0;
  List<String> titles = ["Islami","Hadeth" ,"Sebha" , "Radio","settings"];
  List<Widget> screens = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen(),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {

    return CustomBackground(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            titles[selectedIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:selectedIndex ,
          onTap: (value) {
            selectedIndex = value;
            pageController.animateToPage(value,curve: Curves.decelerate,duration: Duration(milliseconds: 800));
            setState(() {});
          },
            items: [
              BottomNav(image: "assets/icons/quran_icn.png", text: "Quran"),
              BottomNav(image: "assets/icons/hadeth.png", text: "Hadeth"),
              BottomNav(image: "assets/icons/sebha.png", text: "Sebha"),
              BottomNav(image: "assets/icons/radio.png", text: "Radio"),
              BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "Settings"),
            ]),
        body: PageView(
          controller:pageController ,
          onPageChanged: (value) {
            selectedIndex = value;
            setState(() {

            });
          },
          children: screens,
        ),
      ),
    );
  }
}
