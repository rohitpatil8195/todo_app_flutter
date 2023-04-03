import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

import '../models/task.dart';
import '../screens/tasks_screen.dart';

// class TaskList extends StatelessWidget {
//   const TaskList({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(10),
//       children:   [
//         TaskTile(),
//         TaskTile(),
//         TaskTile(),
//       ],
//     );
//   }
// }


class TaskList extends StatefulWidget {
  final List<Task> tasks;
   TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
        return TaskTile(
            widget.tasks[index].isDone,
          widget.tasks[index].name,
            (checkBoxCallBackVal){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
    },itemCount: widget.tasks.length,);
    // return ListView(
    //   padding: const EdgeInsets.all(10),
    //   children:   [
    //     TaskTile(tasks[0].isDone,tasks[0].name),
    //     TaskTile(tasks[1].isDone,tasks[1].name),
    //     TaskTile(tasks[2].isDone,tasks[2].name)
    //   ],
    // );
  }
}

