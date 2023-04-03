import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final Function checkBoxCallBack;
  const TaskTile(this.isChecked,this.taskTitle,this.checkBoxCallBack, {super.key});
  @override
  Widget build(BuildContext context) {
    return   ListTile(
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
    );
  }
}




