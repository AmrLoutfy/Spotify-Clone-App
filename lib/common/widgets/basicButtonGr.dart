import 'package:flutter/material.dart';
import 'package:spotify_clone/core/config/theme/app_colors.dart';

class BasicbuttonGr extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;

  const BasicbuttonGr(
      {required this.onPressed, required this.title, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.notselct,
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
      ),
    );
  }
}
