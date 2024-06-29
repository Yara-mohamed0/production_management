abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpSuccessState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  final String error;

  SignUpErrorState(this.error);
}

class SignUpChangeVisibilityState extends SignUpState {}

class SignUpConfirmChangeVisibilityState extends SignUpState {}

class SignUpRoleSelectedState extends SignUpState {
  final String selectedRole;

  SignUpRoleSelectedState(this.selectedRole);
}
class SignUpYearSelectedState extends SignUpState {
  final String selectedYear;

  SignUpYearSelectedState(this.selectedYear);
}
class SignUpValidState  extends SignUpState {}
class SignUpSubmit  extends SignUpState {}