import 'bloc/loading_bloc.dart';
import 'models/loading_model.dart';
import 'package:flutter/material.dart';
import 'package:partial_halper_app/core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingBloc>(
        create: (context) =>
            LoadingBloc(LoadingState(loadingModelObj: LoadingModel()))
              ..add(LoadingInitialEvent()),
        child: LoadingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<LoadingBloc, LoadingState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: 232.v,
                      width: 259.h,
                      radius: BorderRadius.circular(129.h),
                      alignment: Alignment.center))));
    });
  }
}
