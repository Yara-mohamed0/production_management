import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class TrackHoursCubit extends Cubit<TrackHoursStates> {
  TrackHoursCubit() : super(TrackHoursInitialState());

  static TrackHoursCubit get(context) => BlocProvider.of(context);

  String? attendanceRecord;

  void toggleAttendanceRecord(String value) {
    attendanceRecord = value;
    emit(ToggleAttendance());
  }
}
