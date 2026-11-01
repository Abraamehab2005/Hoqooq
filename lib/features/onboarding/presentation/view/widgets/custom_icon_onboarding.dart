import 'package:flutter/material.dart';

class CustomIconOnboarding extends StatelessWidget {
  const CustomIconOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_org.png',
      width: 48,
      height: 48,
      fit: BoxFit.contain,
    );
  }
}