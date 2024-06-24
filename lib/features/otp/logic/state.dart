//state
import 'package:timer_count_down/timer_controller.dart';

abstract class ValidationStates {}

class TimerRunningState extends ValidationStates {
  final CountdownController controller;

  TimerRunningState({required this.controller});
}

class TimerFinishedState extends ValidationStates {}