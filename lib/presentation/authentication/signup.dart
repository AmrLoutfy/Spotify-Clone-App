import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
      SizedBox(height: 50,),Align(alignment: Alignment.topCenter,child: SvgPicture.asset(AppVectors.logosm)),

    ],),);
  }
}
