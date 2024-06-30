import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../internal_communication/ui/screen/internal_communication_screen.dart';
import '../../../maintenance_status/ui/screen/maintenance_status_screen.dart';
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
    const MaintenanceStatusScreen(),
    const InternalCommunicationScreen()
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
