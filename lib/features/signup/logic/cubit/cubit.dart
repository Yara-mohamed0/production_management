// Sign up cubit
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
    isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    emit(SignUpChangeVisibilityState());
  }

  bool isConfirmPassword = true;
  IconData confirmSuffix = Icons.visibility_off_outlined;

  void changeConfirmPasswordVisibility() {
    isConfirmPassword = !isConfirmPassword;
    confirmSuffix = isConfirmPassword
        ? Icons.visibility_off_outlined
        : Icons.visibility_outlined;
    emit(SignUpConfirmChangeVisibilityState());
  }

  void changeRole(String newRole) {
    emit(SignUpRoleSelectedState(newRole));
  }

  void changeYear(String newYear) {
    emit(SignUpYearSelectedState(newYear));
  }

  bool submitted = false;
  void changeSubmitted() {
    submitted=true;
    emit(SignUpSubmit());
  }
}