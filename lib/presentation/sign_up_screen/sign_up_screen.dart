import 'package:fhedyapp/widgets/custom_text_form_field.dart';
import 'package:fhedyapp/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSupertoroidYellowGlossy,
                      height: 489.v,
                      width: 430.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 37.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Sign up",
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(height: 37.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Full Name",
                                  style:
                                      CustomTextStyles.labelMediumDeeporange300,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            _buildFullName(context),
                            SizedBox(height: 30.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Email",
                                  style:
                                      CustomTextStyles.labelMediumDeeporange300,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            _buildEmail(context),
                            SizedBox(height: 30.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Password",
                                  style:
                                      CustomTextStyles.labelMediumDeeporange300,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            _buildPassword(context),
                            SizedBox(height: 31.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Confirm password",
                                  style:
                                      CustomTextStyles.labelMediumDeeporange300,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.v),
                            _buildConfirmpassword(context),
                            SizedBox(height: 30.v),
                            _buildSignUp(context),
                            SizedBox(height: 31.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Already have an account?    ",
                                    style: CustomTextStyles.labelMediumffee8e66,
                                  ),
                                  TextSpan(
                                    text: "Login",
                                    style: CustomTextStyles.labelLargeffee8e66
                                        .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 37.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildFacebook(context),
                                  _buildGoogle(context)
                                ],
                              ),
                            ),
                            SizedBox(height: 32.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "By Signing Up, You agree to our ",
                                    style: CustomTextStyles
                                        .labelMediumffee8e66Medium,
                                  ),
                                  TextSpan(
                                    text: "Terms & Privacy Policy",
                                    style:
                                        CustomTextStyles.labelMediumffee8e66_1,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "Enter your full name",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 11.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockDeepOrange300,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Enter your email address",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 11.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettingsDeepOrange300,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "••••••••••••••••••••••••••••••••|",
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 11.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      suffix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 17.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgOutline,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 20.v),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmpasswordController,
      hintText: "Re-enter your password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 11.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      suffix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 17.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgMusic,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 54.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 20.v),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return OutlineGradientButton(
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
        text: "Sign Up",
        rightIcon: Container(
          margin: EdgeInsets.only(left: 2.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowright,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientLightGreenToLimeTL16Decoration,
        buttonTextStyle: CustomTextStyles.titleMediumGreen50,
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0, -0.05),
            end: Alignment(0.89, 1.06),
            colors: [
              theme.colorScheme.onPrimary,
              theme.colorScheme.onPrimary.withOpacity(0.2)
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
          child: CustomOutlinedButton(
            height: 56.v,
            text: "Facebook",
            leftIcon: Container(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 4.v,
                right: 6.h,
              ),
              margin: EdgeInsets.only(right: 16.h),
              decoration: BoxDecoration(
                color: appTheme.blueA400,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 19.v,
                width: 10.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.outline,
            buttonTextStyle: CustomTextStyles.labelLargePoppinsGray700,
            onPressed: () {
              onTapFacebook(context);
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0, -0.05),
            end: Alignment(0.89, 1.06),
            colors: [
              theme.colorScheme.onPrimary,
              theme.colorScheme.onPrimary.withOpacity(0.2)
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
          child: CustomOutlinedButton(
            height: 56.v,
            text: "Google",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.outline,
            buttonTextStyle: CustomTextStyles.labelLargePoppinsGray700,
            onPressed: () {
              onTapGoogle(context);
            },
          ),
        ),
      ),
    );
  }

  /// Navigates to the filterScreen when the action is triggered.
  onTapFacebook(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterScreen);
  }

  /// Navigates to the filterScreen when the action is triggered.
  onTapGoogle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.filterScreen);
  }
}
