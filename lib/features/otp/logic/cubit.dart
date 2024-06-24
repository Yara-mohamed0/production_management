//cubit
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_count_down/timer_controller.dart';


import 'state.dart';

class ValidationCubit extends Cubit<ValidationStates> {
  ValidationCubit() : super(TimerRunningState(controller: CountdownController(autoStart: true)));

  void timerFinished() {
    emit(TimerFinishedState());
  }
  void startTimer() {
    emit(TimerRunningState(controller: CountdownController()));
  }
}

