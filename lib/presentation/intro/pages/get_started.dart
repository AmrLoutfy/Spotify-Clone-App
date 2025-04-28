import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/basicButton.dart';
import 'package:spotify_clone/core/config/assets/app_images.dart';
import 'package:spotify_clone/core/config/assets/app_vectors.dart';
import 'package:spotify_clone/core/config/theme/app_colors.dart';
import 'package:spotify_clone/presentation/choose_mode/pages/choosemode.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.tamino))),
            child: Column(
              children: [
                SizedBox(height: 50),
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Welcome to your music world! Discover new tracks, vibe to your favorites, and create the perfect playlist for every moment. Let’s get started!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightBackground,
                        fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30,bottom: 20),
                  child: Basicbutton(height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => const ChooseMode() ));

                      },
                      title: 'Get Started'),
                ),
              ],
            ),
          ),
          IgnorePointer(ignoring: true,
            child: Container(
              color: Colors.black.withOpacity(0.30),
            ),
          )
        ],
      ),
    );
  }
}
