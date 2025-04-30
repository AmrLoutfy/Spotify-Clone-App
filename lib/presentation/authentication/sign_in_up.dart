import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/helpers/isDarkMode.dart';
import 'package:spotify_clone/common/widgets/basicButton.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/authentication/signup.dart';

import '../../core/config/theme/app_colors.dart';

class SignUpOrIn extends StatelessWidget {
  const SignUpOrIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.union,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.union1,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.b),
          ),
          Column(children: [
            SizedBox(
              height: 120,
            ),
            Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(AppVectors.logo)),
            SizedBox(
              height: 60,
            ),
            Text(
              'Enjoy Listening To Music',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: context.isDarkMode ? Colors.white : Colors.black,
                  fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Sign in to get your musical journey started!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: context.isDarkMode ? AppColors.notselct : AppColors.greytxt,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 140,
                    child: Basicbutton(
                      onPressed: () {},
                      title: 'Sign In',
                      height: 60,
                    )),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                    width: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));

                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        )))
              ],
            )
          ])
        ],
      ),
    );
  }
}
