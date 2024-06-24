// Sign up cubit
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class ChangeForgotPasswordCubit extends Cubit<ChangeForgotPasswordState> {
  ChangeForgotPasswordCubit() : super(ChangeForgotPasswordInitialState());

  static ChangeForgotPasswordCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    emit(ChangeForgotPasswordChangeVisibilityState());
  }

  bool isConfirmPassword = true;
  IconData confirmSuffix = Icons.visibility_off_outlined;

  void changeConfirmPasswordVisibility() {
    isConfirmPassword = !isConfirmPassword;
    confirmSuffix = isConfirmPassword
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    emit(ChangeForgotPasswordConfirmChangeVisibilityState());
  }


  bool submitted = false;
  void changeSubmitted() {
    submitted=true;
    emit(SignUpSubmit());
  }
}