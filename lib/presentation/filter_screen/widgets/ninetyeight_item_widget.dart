import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

// ignore: must_be_immutable
class NinetyeightItemWidget extends StatelessWidget {
  const NinetyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
          theme.colorScheme.onPrimary.withOpacity(0.1),
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
          horizontal: 12.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.outline2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 36.v,
              width: 38.h,
            ),
            SizedBox(height: 6.v),
            SizedBox(
              width: 50.h,
              child: Divider(),
            ),
            SizedBox(height: 6.v),
            Text(
              "Beauty&Cosmetics",
              style: theme.textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
