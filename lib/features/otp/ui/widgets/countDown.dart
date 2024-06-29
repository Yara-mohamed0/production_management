//timer
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../core/theming/styles.dart';
import '../../logic/cubit.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer(
      {super.key, required this.controller, required this.remaining});

  final CountdownController controller;
  final int remaining;

  @override
  Widget build(BuildContext context) {
    final validationCubit = BlocProvider.of<ValidationCubit>(context);
    return Countdown(
      controller: controller,
      onFinished: () {
        validationCubit
            .timerFinished(); // Call timerFinished() when countdown reaches zero
      },
      interval: const Duration(milliseconds: 100),
      seconds: remaining * 60,
      build: (BuildContext context, double time) {
        // Convert the time to a Duration object
        Duration duration = Duration(seconds: time.toInt());

        // Format the duration to display hours, minutes, and seconds
        String minutes =
            (duration.inMinutes.remainder(60)).toString().padLeft(2, '0');
        String seconds =
            (duration.inSeconds.remainder(60)).toString().padLeft(2, '0');
        // Return the formatted time as text
        controller.start();
        return Text(
          '$minutes:$seconds',
          style: AppFonts.font14W400Primary,
        );
      },
    );
  }
}
