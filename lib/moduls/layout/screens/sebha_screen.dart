import 'package:flutter/material.dart';
import 'package:islami_4pm/core/thems/themes.dart';
import 'package:islami_4pm/moduls/layout/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count = 0;
  int index = 0;
  double turns = 0.0;
  List<String> doaa = ["الحمد لله", "سبحان الله", "الله و اكبر"];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Align(
                  alignment: Alignment.center,
                  child:Image.asset(provider.themeMode == ThemeMode.light
        ? "assets/images/head_sebha_logo.png"
        : "assets/images/head_sebha_dark.png")),
            ),
            GestureDetector(
              onTap: counter,
              child: Padding(
                padding: const EdgeInsets.only(top: 78),
                child: Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(angle: turns,child: Image.asset(provider.themeMode == ThemeMode.light
        ? "assets/images/body_sebha_logo.png"
        : "assets/images/body_sebha_dark.png"))),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "عدد التسبيحات",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          height: 81,
          width: 69,
          decoration: BoxDecoration(
              color: provider.themeMode == ThemeMode.light ?
               AppTheme.yellowLightColor.withOpacity(0.7) :
              Colors.transparent.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            "$count",
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          height: 51,
          width: 137,
          decoration: BoxDecoration(
              color: provider.themeMode == ThemeMode.light ?
               AppTheme.yellowLightColor :
               AppTheme.yellowDarkColor,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            doaa[index],
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25),
          ),
        ),
      ],
    );
  }

  counter() {
    turns += 10;
    if (count == 33) {
      count = -1;

      if (index < doaa.length - 1) {
        index += 1;
      } else {
        index = 0;
      }
    }
    count++;
    setState(() {});
  }
}
