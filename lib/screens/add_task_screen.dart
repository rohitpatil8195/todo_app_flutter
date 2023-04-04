import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_list.dart';

import '../models/task.dart';


class AddTaskScreen extends StatelessWidget {
   late String taskText;
  // void Function(String) addTaskClBack;
  //
  //  AddTaskScreen(this.addTaskClBack, {super.key});

   // void fun(){
   //   addTaskClBack(taskText);
   // }
  @override
  Widget build(BuildContext context) {
    return  Container(
         color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration:
        const BoxDecoration(
            color: Colors.white,
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(20),
           topLeft: Radius.circular(20)
         )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const Text('Add Task',
              textAlign: TextAlign.center, style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 25,
            ),),
            TextField(
             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (text){
              taskText=text;
             },
           ),

            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  elevation: 0,
                ),
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTaskMethod(taskText);
                  Navigator.pop(context);
                  },
                child: const Text("Add"),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
