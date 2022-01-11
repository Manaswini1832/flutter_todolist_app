class Task {
  final String title;
  bool isDone = false;

  Task(this.title, this.isDone);

  void toggleDone() {
    isDone = !isDone;
  }
}
