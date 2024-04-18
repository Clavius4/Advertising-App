import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

class SplashTwoScreen extends StatelessWidget {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Add a delay of 2 seconds before navigating to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/language_screen');
    });

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogoRedesigned,
                height: 160.v,
                width: 200.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
