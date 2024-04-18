import 'package:flutter/material.dart';
import 'widgets/advertisethree_item_widget.dart';
import 'package:fhedyapp/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:fhedyapp/core/app_export.dart';

class AdvertisethreeScreen extends StatefulWidget {
  const AdvertisethreeScreen({Key? key}) : super(key: key);

  @override
  _AdvertisethreeScreenState createState() => _AdvertisethreeScreenState();
}

class _AdvertisethreeScreenState extends State<AdvertisethreeScreen> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    List<String> radioOptions = ['M-PESA', 'TIGO-PESA', 'AIRTEL-MONEY', 'HALOPESA', 'BANK TRANSFER'];

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            height: 1050.v,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 43,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAngleLeft,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(bottom: 4),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 87),
                        child: Text(
                          "Ad Payment",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(right: 1),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: 2,
                        top: 2,
                        right: 2,
                        bottom: 2,
                      ),
                      strokeWidth: 2,
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.gray400,
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(9, 26, 9, 28),
                        decoration: AppDecoration.outline,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 17),
                                child: Text(
                                  "2/3",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 26),
                            Padding(
                              padding: EdgeInsets.only(left: 22),
                              child: Text(
                                "Select Payment Method",
                                style: CustomTextStyles.titleMediumSemiBold,
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              "We have the following available options:",
                              style: CustomTextStyles.titleSmallDeeporange300,
                            ),
                            SizedBox(height: 40),
                            _buildAdvertiseThree(radioOptions),
                            SizedBox(height: 26),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.v,),
                  Padding(
                    padding: EdgeInsets.only(right: 17.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
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
                              theme.colorScheme.onPrimaryContainer,
                              theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {
                              // Navigate to another screen
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AdvertisethreeScreen()),
                              );
                            },
                            icon: Icon(Icons.arrow_forward), // Arrow right icon
                            iconSize: 24,

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
      ),
    );
  }

  Widget _buildAdvertiseThree(List<String> radioOptions) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 15),
        child: Column(
          children: radioOptions.map((option) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: selectedOption == option ? Colors.brown : Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: RadioListTile<String>(
                    title: Text(
                      option,
                      style: TextStyle(
                        color: selectedOption == option ? Colors.brown : null,
                      ),
                    ),
                    value: option,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20), // Vertical space between radio buttons
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

}
