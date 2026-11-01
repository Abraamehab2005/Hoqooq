import 'package:flutter/material.dart';

class CustomIconOnboarding extends StatelessWidget {
  const CustomIconOnboarding({super.key});
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final size = h < 700 ? 40.0 : 50.0;

    return Image.asset(
      'assets/images/splash_org.png',
      width: size,
      height: size,
      fit: BoxFit.contain,
    );
  }
}