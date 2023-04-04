import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final Function checkBoxCallBack;
 final void Function()? longPressCallback;
  const TaskTile({required this.isChecked,required this.taskTitle,required this.checkBoxCallBack,required this.longPressCallback, super.key});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onLongPress: longPressCallback ,
      child: ListTile(
          title:  Text(taskTitle
          ,style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none),
          ),
          trailing: Checkbox(
            value: isChecked,
            activeColor: Colors.lightBlueAccent,
            onChanged:(isChecked){
              checkBoxCallBack(isChecked);
            }
          ),
      ),
    );
  }
}




