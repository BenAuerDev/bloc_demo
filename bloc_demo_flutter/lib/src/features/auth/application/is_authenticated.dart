import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo_flutter/main.dart';

/// This cubit is used to keep track of the authentication state of the user.
/// It listens to the [sessionManager] and emits a new state whenever the
/// authentication state changes.
class IsAuthenticatedCubit extends Cubit<bool> {
  IsAuthenticatedCubit() : super(sessionManager.isSignedIn) {
    sessionManager.addListener(() {
      emit(sessionManager.isSignedIn);
    });
  }
}
