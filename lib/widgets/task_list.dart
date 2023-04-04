import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';




class   TaskList extends StatelessWidget  {
  const TaskList({super.key});
  @override

  @override
  Widget build(BuildContext context) {

        return Consumer<TaskData>(
          builder: (BuildContext context, taskData, Widget? child) {
            return ListView.builder(itemBuilder: (context,index){
              final taskItem=taskData.tasks[index];
            return TaskTile(
              isChecked:taskItem.isDone,
            taskTitle:taskItem.name,
              checkBoxCallBack:(checkBoxCallBackVal){
           taskData.updateTaskState(taskItem);
                },
               //  (longPressCallback):{
               //  print('dd');
               // taskData.deleteTask(index);
               //  }
              longPressCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
              itemCount: taskData.taskCount,);
    },
        );

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

