class Task {
  int id;
  String title;
  bool isCompleted;

  Task(this.id, this.title, this.isCompleted);
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    print('Task "${task.title}" added successfully.');
  }

  void completeTask(int taskId) {
    Task task = tasks.firstWhere((t) => t.id == taskId, orElse: () => null);
    if (task != null) {
      task.isCompleted = true;
      print('Task "${task.title}" marked as completed.');
    } else {
      print('Task with ID $taskId not found.');
    }
  }

  // Other methods for task management can be added here
}

void main() {
  TaskManager taskManager = TaskManager();

  Task task1 = Task(1, 'Finish project', false);
  Task task2 = Task(2, 'Buy groceries', false);

  taskManager.addTask(task1);
  taskManager.addTask(task2);

  taskManager.completeTask(1);
  taskManager.completeTask(3); // Invalid task ID
}
