import 'package:fhedyapp/presentation/advertisethree_screen/advertisethree_screen.dart';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';
import 'package:fhedyapp/widgets/custom_drop_down.dart';
import 'package:fhedyapp/widgets/custom_icon_button.dart';
import 'package:fhedyapp/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:image_picker/image_picker.dart';


class AdvertisetwoScreen extends StatefulWidget {
  AdvertisetwoScreen({Key? key}) : super(key: key);

  @override
  _AdvertisetwoScreenState createState() => _AdvertisetwoScreenState();
}

class _AdvertisetwoScreenState extends State<AdvertisetwoScreen> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  String? selectedCategory;

  TextEditingController cardController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: SizeUtils.width,
            height: 900.h,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 29.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41.v),
                  Padding(
                    padding: EdgeInsets.only(right: 94.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAngleLeft,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "Create an Ad Campaign",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 46.v),
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        top: 2.v,
                        right: 2.h,
                        bottom: 2.v,
                      ),
                      strokeWidth: 2.h,
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
                        width: 393.h,
                        padding: EdgeInsets.fromLTRB(12.h, 17.v, 12.h, 19.v),
                        decoration: AppDecoration.outline,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 12.h),
                                child: Text(
                                  "1/3",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Text(
                              "Create an advertisement at a favourable cost.",
                              style: CustomTextStyles.titleSmallDeeporange300,
                            ),
                            SizedBox(height: 36.v),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "Ad Name",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: CustomTextFormField(
                                controller: cardController,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 22.v),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                "Choose Category",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.v,
                                    horizontal: 10.h,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 32.h,
                                value: selectedCategory,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCategory = newValue;
                                  });
                                },
                                items: dropdownItemList.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                "Choose Place",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: CustomTextFormField(
                                controller: timeController,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                "Time for the Ad",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: CustomTextFormField(
                                controller: timeController,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text(
                                "Upload Video/Image",
                                style: CustomTextStyles.titleSmallGray500,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: IconButton(
                                      onPressed: () async {
                                        final ImagePicker _picker = ImagePicker();
                                        final XFile? image = await _picker.pickImage(source: ImageSource.gallery); // Use pickVideo for selecting video
                                        if (image != null) {
                                          // Handle the selected image
                                          print('Selected image: ${image.path}');
                                        } else {
                                          // User canceled the operation
                                          print('No image selected.');
                                        }
                                      },

                                      icon: Icon(Icons.attach_file),
                                    ),
                                  ),
                                  CustomTextFormField(
                                    filled: false,
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10.v),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
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
                            iconSize: 24, // Adjust icon size as needed
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
}
