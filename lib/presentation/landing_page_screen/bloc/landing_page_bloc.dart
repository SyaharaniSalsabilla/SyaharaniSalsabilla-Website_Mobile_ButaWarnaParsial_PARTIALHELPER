import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:partial_halper_app/presentation/landing_page_screen/models/landing_page_model.dart';
part 'landing_page_event.dart';
part 'landing_page_state.dart';

/// A bloc that manages the state of a LandingPage according to the event that is dispatched to it.
class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc(LandingPageState initialState) : super(initialState) {
    on<LandingPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LandingPageInitialEvent event,
    Emitter<LandingPageState> emit,
  ) async {}
}
