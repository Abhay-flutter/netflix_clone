import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color/colorconstant.dart';
import 'package:netflix_clone/utils/image/imageconstant.dart';
import 'package:netflix_clone/view/username_screen/username.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const UserName()),
      );
    });

    return Scaffold(
      backgroundColor: ColorConstant.bgcolr,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: ImageConstant.logo,
            ),
          ),
          SizedBox(height: 60),
          CircularProgressIndicator(
            color: const Color.fromARGB(255, 157, 34, 25),
          )
        ],
      ),
    );
  }
}
