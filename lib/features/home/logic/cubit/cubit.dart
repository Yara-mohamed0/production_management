import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../track_working_hours/ui/screen/track_working_hours_screen.dart';
import '../../ui/screens/home_screen.dart';
import 'state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  String? attendanceRecord;

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const TrackWorkingHoursScreen(),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.deepPurpleAccent,
    ),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(HomeBottomChange());
  }

  void toggleAttendanceRecord(String value) {
    attendanceRecord = value;
    emit(ToggleAttendance());
  }
}
