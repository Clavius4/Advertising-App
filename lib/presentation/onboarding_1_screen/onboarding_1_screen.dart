import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../onboarding_2_screen/onboarding_2_screen.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgOnboarding1,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
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
                  SizedBox(height: 48.v),
                  _buildCharacter(context),
                  SizedBox(height: 50.v),
                  Text(
                    "Welcome to AdvertiseNow",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    width: 238.h,
                    child: Text(
                      "Discover Endless Opportunities. From local favorites to global brands, AdvertiseNow empowers you to discover new products, services and experiences tailored to your interests  ",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeBlack9000f,
                    ),
                  ),
                  SizedBox(height: 45.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 4.v,
                      margin: EdgeInsets.only(right: 147.h),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 8,
                          activeDotColor: appTheme.lime700,
                          dotColor: appTheme.gray100,
                          activeDotScale: 2.0,
                          dotHeight: 2.v,
                          dotWidth: 12.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 62.v),
                  _buildBackSkipNext(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCharacter(BuildContext context) {
    return SizedBox(
      height: 276.v,
      width: 356.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 254.v,
              width: 356.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCharacter,
                    height: 254.v,
                    width: 356.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 261.h,
                        top: 41.v,
                        right: 52.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCalendarDeepOrangeA100,
                            height: 41.v,
                            width: 40.h,
                          ),
                          SizedBox(height: 20.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgDiscount,
                            height: 39.v,
                            width: 40.h,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGlassTick,
            height: 37.v,
            width: 40.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 52.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  /// Section Widget
  Widget _buildBackSkipNext(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 72.h,
            text: "Skip",
            margin: EdgeInsets.symmetric(vertical: 6.v),
            onPressed: () {
              onTapSkip(context);
            },
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the next screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Onboarding2Screen()), // Ensure NextScreen is defined
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


  /// Navigates to the homeScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
