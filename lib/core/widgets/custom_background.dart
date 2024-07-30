import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  Widget child;
   CustomBackground({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/screens_bg.png"),fit: BoxFit.cover)),
      child: child
    );
  }
}
