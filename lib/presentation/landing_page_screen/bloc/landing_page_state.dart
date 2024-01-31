// ignore_for_file: must_be_immutable

part of 'landing_page_bloc.dart';

/// Represents the state of LandingPage in the application.
class LandingPageState extends Equatable {
  LandingPageState({this.landingPageModelObj});

  LandingPageModel? landingPageModelObj;

  @override
  List<Object?> get props => [
        landingPageModelObj,
      ];
  LandingPageState copyWith({LandingPageModel? landingPageModelObj}) {
    return LandingPageState(
      landingPageModelObj: landingPageModelObj ?? this.landingPageModelObj,
    );
  }
}
