import 'package:flutter/material.dart';
import 'package:islami_4pm/moduls/hadeth/hadeth_details.dart';
import 'package:islami_4pm/moduls/layout/layout_screen.dart';

import 'core/thems/themes.dart';
import 'moduls/quran/quran_details.dart';
import 'moduls/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        LayoutScreen.routeName: (_) => LayoutScreen(),
        QuranDetails.routeName: (_) => QuranDetails(),
        HadethDetails.routeName: (_)=> HadethDetails()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
