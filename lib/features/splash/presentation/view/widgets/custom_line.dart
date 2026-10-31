import 'package:flutter/material.dart';
import 'package:hoqooq/core/constants/app_colors.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: AppColors.accent),
    );
  }
}
