import 'package:flutter/material.dart';
import 'package:islami_4pm/core/thems/themes.dart';
import 'package:islami_4pm/moduls/layout/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        const SizedBox(height: 100,),
        Image.asset("assets/images/radio_image.png"),
        const SizedBox(height: 50,),
        const Text("إذاعة القرآن الكريم"),
        const SizedBox(height: 5,),
        Image.asset("assets/images/Group 5.png",height: 150,width: 150,
        color: provider.themeMode == ThemeMode.light ?
               AppTheme.yellowLightColor :
               AppTheme.yellowDarkColor,),
      ],
    );
  }
}
