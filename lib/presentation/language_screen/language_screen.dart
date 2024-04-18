import 'package:fhedyapp/widgets/custom_drop_down.dart';
import 'package:fhedyapp/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

import '../onboarding_1_screen/onboarding_1_screen.dart';

class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "English",
    "Kiswahili",
    "French",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 48.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 66.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogoRedesigned,
                  height: 108.v,
                  width: 135.h,
                ),
                Spacer(
                  flex: 37,
                ),
                Text(
                  "Select Language",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    right: 35.h,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the background color here
                      borderRadius: BorderRadius.circular(5), // Add some border radius if you want
                    ),
                    child: CustomDropDown(
                      hintText: "Choose Language",
                      items: dropdownItemList,
                    ),
                  ),
                ),
                Spacer(
                  flex: 62,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboarding1Screen()), // Replace NextScreen with the actual screen you want to navigate to
                      );
                    },
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 2.v,
                        right: 2.h,
                        bottom: 2.v,
                      ),
                      strokeWidth: 2.h,
                      gradient: LinearGradient(
                        begin: Alignment(0.7, -0.18),
                        end: Alignment(0.03, 1),
                        colors: [
                          theme.colorScheme.onPrimary,
                          theme.colorScheme.onPrimary.withOpacity(0.1),
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      child: CustomIconButton(
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        padding: EdgeInsets.all(15.h),
                        decoration: IconButtonStyleHelper.gradientLightGreenToLime,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRightLightGreen50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
