
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';

class SignUpOrIn extends StatelessWidget {
  const SignUpOrIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: SvgPicture.asset(
              AppVectors.union,
              alignment: Alignment.topRight,
            ),
          ),
          Align(
            child: SvgPicture.asset(
              AppVectors.union1,
              alignment: Alignment.bottomRight,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.b),
          )
        ],
      ),
    );
  }
}
