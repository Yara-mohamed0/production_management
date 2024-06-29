abstract class TaskStates {}

class TaskInitial extends TaskStates {}

class TaskUpdated extends TaskStates {
  final List<Map<String, dynamic>> tasks;

  TaskUpdated(this.tasks);
}
class RecordUpdated extends TaskStates {
  final List<Map<String, dynamic>> tasks;

  RecordUpdated(this.tasks);
}