import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:partial_halper_app/camera_screen.dart';
import 'package:partial_halper_app/core/app_export.dart';
import 'package:partial_halper_app/widgets/custom_elevated_button.dart';

import 'bloc/landing_page_bloc.dart';
import 'models/landing_page_model.dart';

// Sesuaikan path dengan struktur proyek Anda

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LandingPageBloc>(
      create: (context) => LandingPageBloc(LandingPageState(
        landingPageModelObj: LandingPageModel(),
      ))
        ..add(LandingPageInitialEvent()),
      child: LandingPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LandingPageBloc, LandingPageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 73.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle1,
                    height: 60.v,
                    width: 241.h,
                  ),
                  SizedBox(height: 57.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle3,
                    height: 341.v,
                    width: 393.h,
                  ),
                  SizedBox(height: 58.v),
                  SizedBox(
                    width: 195.h,
                    child: Text(
                      "msg_bantuan_warna_dalam".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumIndigo400,
                    ),
                  ),
                  CustomElevatedButton(
                    width: 178.h,
                    text: "lbl_buka_kamera".tr,
                    onPressed: () async {
                      // Open the camera when the button is pressed
                      final cameras = await availableCameras();
                      final camera = cameras.first;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CameraScreen(camera: camera),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
