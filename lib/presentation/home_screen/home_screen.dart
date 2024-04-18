import 'package:fhedyapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:fhedyapp/widgets/custom_search_view.dart';
import 'package:fhedyapp/widgets/custom_outlined_button.dart';
import 'package:fhedyapp/widgets/custom_icon_button.dart';
import 'package:fhedyapp/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Column(
            children: [
              SizedBox(height: 44.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 1000.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildSeventySeven(context),
                                  SizedBox(height: 25.v),
                                  Container(
                                    width: 255.h,
                                    margin: EdgeInsets.only(left: 38.h),
                                    child: Text(
                                      "Who are you \nlooking for today?",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineLarge!
                                          .copyWith(
                                        height: 1.20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.v),
                                  Container(
                                    width: 217.h,
                                    margin: EdgeInsets.only(left: 38.h),
                                    child: Text(
                                      "Connect with the most Talented, Professional service provider around you.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .labelMediumBlack9000f,
                                    ),
                                  ),
                                  SizedBox(height: 30.v),
                                  _buildInterviewReminder1(context),
                                  SizedBox(height: 18.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 38.h,
                                        right: 37.h,
                                      ),
                                      child: CustomSearchView(
                                        controller: searchController,
                                        hintText:
                                        "Search services or advertisers",
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 36.v),
                                  SizedBox(
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigate to the desired screen
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => SignUpScreen(),
                            //       ),
                            //     );
                            //   },
                            //   child: Container(
                            //     height: 100.v,
                            //     child: ListView.builder(
                            //       itemCount: 2,
                            //       itemBuilder: (context, index) {
                            //         return Container(
                            //           // Replaced UsedContainer with Container
                            //           height: 100.v,
                            //           color: Colors.white,
                            //           child: Column(
                            //             mainAxisAlignment: MainAxisAlignment.center,
                            //             children: [
                            //               Text("Replace with your content"),
                            //               // Add your content here
                            //             ],
                            //           ),
                            //         );
                            //       },
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 40,
          width: 40,
          backgroundColor: appTheme.green50.withOpacity(0.05),
          child: CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 20.0.v,
            width: 20.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}


/// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello! 👋",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "Paul Thomas",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 53.adaptSize,
              width: 53.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInterviewReminder1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 38.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 53.v,
                width: 410.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 53.v,
                        width: 410.h,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: OutlineGradientButton(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 2.v,
                                  right: 2.h,
                                  bottom: 2.v,
                                ),
                                strokeWidth: 2.h,
                                gradient: LinearGradient(
                                  begin: Alignment(0, -0.05),
                                  end: Alignment(0.89, 1.06),
                                  colors: [
                                    theme.colorScheme.onPrimary,
                                    theme.colorScheme.onPrimary.withOpacity(0.2),
                                  ],
                                ),
                                corners: Corners(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                                child: Container(
                                  height: 53.v,
                                  width: 227.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(12.h),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.lime90011,
                                        spreadRadius: 2.h,
                                        blurRadius: 2.h,
                                        offset: Offset(-8, 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconColorful,
                              height: 31.v,
                              width: 29.h,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: 20.h),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 347.h,
                                margin: EdgeInsets.only(
                                  left: 63.h,
                                  top: 13.v,
                                  bottom: 13.v,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Review Quotation",
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        Text(
                                          "SethDesign sent you a quote for business services",
                                          style: CustomTextStyles.manropeGray700,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0, // Adjust the width as needed
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      decoration: BoxDecoration(
        color: appTheme.gray10033.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.3),
          width: 2.h,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavigationButton(
              context,
              icon: Icons.home,
              routeName: '/home_screen',
            ),
            _buildNavigationButton(
              context,
              icon: Icons.ad_units_outlined,
              routeName: '/advertisetwo_screen',
            ),
            _buildNavigationButton(
              context,
              icon: Icons.shopping_bag,
              routeName: '/advertisethree_screen',
            ),
            _buildNavigationButton(
              context,
              icon: Icons.person,
              routeName: '/sign_up_screen',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, {required IconData icon, required String routeName}) {
    return IconButton(
      iconSize: 40.adaptSize,
      padding: EdgeInsets.all(6.h),
      icon: Icon(
        icon,
        size: 40.adaptSize,
        color: Colors.brown, // Adjust the color as needed
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }

  Widget _buildFloatingActionButton(BuildContext context, {required IconData icon, required String routeName}) {
    return FloatingActionButton(
      backgroundColor: appTheme.green50.withOpacity(0.05),
      child: Icon(
        icon,
        size: 20.v, // Adjust the size as needed
        color: Colors.brown, // Adjust the color as needed
      ),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }

