import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fhedyapp/widgets/custom_icon_button.dart';
import 'package:fhedyapp/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

import '../home_screen/home_screen.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({Key? key})
      : super(
          key: key,
        );

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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAdvertisetwo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 48.v,
            ),
            child: Column(
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgIcon,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                ),
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 304.v,
                    width: 216.h,
                    margin: EdgeInsets.only(right: 47.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCharacter2,
                          height: 304.v,
                          width: 197.h,
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHeart,
                          height: 32.v,
                          width: 40.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 39.v,
                            right: 3.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPaperPlus,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 95.v,
                            right: 3.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgShield,
                          height: 43.v,
                          width: 46.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 103.v),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 53.v),
                Text(
                  "Discover Brands/Promotions",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 250.h,
                  child: Text(
                    "With AdvertiseNow, We analyse your preferences and browsing history to deliver customized recommendations that resonate with your unique interests and lifestyle.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 34.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 4.v,
                    margin: EdgeInsets.only(right: 143.h),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.gray100,
                        activeDotScale: 2.0,
                        dotHeight: 2.v,
                        dotWidth: 12.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 90.v),
                _buildBackSkipNext(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackSkipNext(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(15.h),
            // decoration: IconButtonStyleHelper.outlineDeepOrange,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
            ),
          ),
          CustomElevatedButton(
            width: 72.h,
            text: "Skip",
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the next screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()), // Ensure NextScreen is defined
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
          )
        ],
      ),
    );
  }
}
