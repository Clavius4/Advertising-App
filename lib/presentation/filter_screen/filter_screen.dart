import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/ninetyeight_item_widget.dart';
import 'widgets/frametwentyseven_item_widget.dart';
import 'package:fhedyapp/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 82.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 1218.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 667.v,
                            width: double.maxFinite,
                            margin: EdgeInsets.only(top: 53.v),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAjebuta3dIconLight,
                                  height: 500.v,
                                  width: 430.h,
                                  alignment: Alignment.topCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgAjebuta3dIconBlue5324x416,
                                  height: 324.v,
                                  width: 416.h,
                                  alignment: Alignment.bottomCenter,
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 33.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "What do you need?",
                                  style:
                                      CustomTextStyles.titleLargeDeeporange300,
                                ),
                                SizedBox(height: 8.v),
                                Container(
                                  width: 266.h,
                                  margin: EdgeInsets.only(
                                    left: 48.h,
                                    right: 49.h,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              "Choose from our wide range of Industry categories.\n",
                                          style: CustomTextStyles
                                              .labelMedium66000000Medium,
                                        ),
                                        TextSpan(
                                          text:
                                              "What are you looking for? Discover thousands of relevant services, ",
                                          style: CustomTextStyles
                                              .labelMedium66000000Medium,
                                        ),
                                        TextSpan(
                                          text: "connect",
                                          style: CustomTextStyles
                                              .labelMedium66000000,
                                        ),
                                        TextSpan(
                                          text: " with ",
                                          style: CustomTextStyles
                                              .labelMedium66000000Medium,
                                        ),
                                        TextSpan(
                                          text: "freelancers",
                                          style: CustomTextStyles
                                              .labelMedium66000000,
                                        ),
                                        TextSpan(
                                          text: " and ",
                                          style: CustomTextStyles
                                              .labelMedium66000000Medium,
                                        ),
                                        TextSpan(
                                          text: "vendors",
                                          style: CustomTextStyles
                                              .labelMedium66000000,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                Opacity(
                                  opacity: 0.3,
                                  child: Divider(
                                    color:
                                        appTheme.black9000f.withOpacity(0.25),
                                  ),
                                ),
                                SizedBox(height: 22.v),
                                _buildNinetyEight(context),
                                SizedBox(height: 10.v),
                                _buildFrameTwentySix(context),
                                SizedBox(height: 10.v),
                                _buildFrameTwentySeven(context)
                              ],
                            ),
                          ),
                        ),
                        _buildBottom(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 101.v,
          crossAxisCount: 3,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 18,
        itemBuilder: (context, index) {
          return NinetyeightItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: _buildProfessionalsCard(
                context,
                graphicDesigner: "Product Designer",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: _buildProfessionalsCard(
                context,
                graphicDesigner: "Engineer",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: _buildProfessionalsCard(
                context,
                graphicDesigner: "Driver",
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwentySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 101.v,
          crossAxisCount: 9,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        itemBuilder: (context, index) {
          return FrametwentysevenItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottom(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 368.v),
        padding: EdgeInsets.symmetric(
          horizontal: 65.h,
          vertical: 52.v,
        ),
        decoration: AppDecoration.gradientGreenToGreen,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 66.v),
            OutlineGradientButton(
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
                  theme.colorScheme.onPrimary.withOpacity(0.1)
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: CustomOutlinedButton(
                height: 50.v,
                text: "Search",
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientLightGreenToLimeTL16Decoration,
                buttonTextStyle: CustomTextStyles.titleMediumGreen50,
                onPressed: () {
                  onTapSearch(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildProfessionalsCard(
    BuildContext context, {
    required String graphicDesigner,
  }) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 2.h,
        top: 2.v,
        right: 2.h,
        bottom: 2.v,
      ),
      strokeWidth: 2.h,
      gradient: LinearGradient(
        begin: Alignment(0.17, 0),
        end: Alignment(0, 0.75),
        colors: [
          theme.colorScheme.onPrimary.withOpacity(0.9),
          theme.colorScheme.onPrimary.withOpacity(0.1)
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.outline2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 42.v),
            SizedBox(
              width: 50.h,
              child: Divider(),
            ),
            SizedBox(height: 5.v),
            Text(
              graphicDesigner,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelSmall!.copyWith(
                color: appTheme.deepOrange300,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
