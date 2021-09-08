import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Data = await task2();
  task3(task2Data);
}

void task1() {
  print('task 1 is completed');
}

Future<String> task2() async {
  Duration duration = Duration(seconds: 3);
  String data = 'null';

  await Future.delayed(duration, () {
    data = 'Task 2 data';
    print('task 2 is completed');
  });
  return data;
}

void task3(String task2Data) {
  print('task 3 is completed with $task2Data');
}
