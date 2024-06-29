import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';

class TaskCubit extends Cubit<TaskStates> {
  TaskCubit() : super(TaskInitial()) {
    tasks = [];
    recording = []; // Initialize recording list here
  }

  static TaskCubit get(context) => BlocProvider.of(context);

  List<Map<String, dynamic>>? tasks;
  List<Map<String, dynamic>>? recording; // Declare recording list

  void addTask(String taskName) {
    final updatedTasks = List<Map<String, dynamic>>.from(tasks!);
    updatedTasks.add({'name': taskName, 'completed': false});
    tasks = updatedTasks;
    emit(TaskUpdated(tasks!));
  }

  void toggleTaskCompletion(int index) {
    final updatedTasks = List<Map<String, dynamic>>.from(tasks!);
    updatedTasks[index]['completed'] = !updatedTasks[index]['completed'];
    tasks = updatedTasks;
    emit(TaskUpdated(tasks!));
  }

  void addRecord(String recordName) {
    final updatedRecords = List<Map<String, dynamic>>.from(recording!);
    updatedRecords.add({'name': recordName, 'completed': false});
    recording = updatedRecords;
    emit(RecordUpdated(recording!));
  }

  void toggleRecording(int index) {
    final updatedRecords = List<Map<String, dynamic>>.from(recording!);
    updatedRecords[index]['completed'] = !updatedRecords[index]['completed'];
    recording = updatedRecords;
    emit(RecordUpdated(recording!));
  }
}

