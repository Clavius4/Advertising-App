import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

// ignore: must_be_immutable
class AdvertisethreeItemWidget extends StatelessWidget {
  const AdvertisethreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 55.v,
        width: 346.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCard,
              height: 55.v,
              width: 346.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.h),
                child: Row(
                  children: [
                    Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(top: 2.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        border: Border.all(
                          color: appTheme.deepOrange300,
                          width: 3.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "M-PESA",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
