abstract class ChangeForgotPasswordState {}

class ChangeForgotPasswordInitialState extends ChangeForgotPasswordState {}


class ChangeForgotPasswordChangeVisibilityState extends ChangeForgotPasswordState {}

class ChangeForgotPasswordConfirmChangeVisibilityState extends ChangeForgotPasswordState {}

class SignUpValidState  extends ChangeForgotPasswordState {}
class SignUpSubmit  extends ChangeForgotPasswordState {}