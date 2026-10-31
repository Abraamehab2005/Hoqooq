import 'package:flutter/material.dart';

class CustomSplashImage extends StatelessWidget {
  const CustomSplashImage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Image.asset(
      "assets/images/splash_org.png",
      fit: BoxFit.contain,
      width: width * 0.25,
    );
  }
}
