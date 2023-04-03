
import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';

 class TasksScreen extends StatefulWidget {

    const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
    List<Task> tasks=[

    ];

// Widget buildBottomSheet;
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.lightBlueAccent,

         onPressed: () {
           // showModalBottomSheet(
           //     context: context,
           //     builder:
           //         (context)=> const AddTaskScreen(),
           // );
           showModalBottomSheet(
               context: context,
               isScrollControlled: true,
               builder: (context) => SingleChildScrollView(
                   child:Container(
                     padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                     child: AddTaskScreen((taskText){
                       setState(() {
                         tasks.add(Task(name: taskText));
                       });
                       Navigator.pop(context);
                   }),
                   )
               )
           );
         },
         child: const Icon(Icons.add),
       ),
        backgroundColor: Colors.lightBlueAccent,
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             padding: const EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:   [
                 const CircleAvatar(
                 radius: 40,
                   backgroundColor: Colors.white,
                     child: Icon(Icons.list,size:50,color: Colors.lightBlueAccent,)
                 ),
                 const SizedBox(height: 10,),
                 const Text('Todoey',
                   style: TextStyle(
                       fontSize: 50,
                       fontWeight: FontWeight.w700,
                      color: Colors.white
                   ),
                 ),
                 Text('${tasks.length} Tasks',style: const TextStyle(
                   color: Colors.white,
                   fontSize: 18
                 ),),

               ],
             ),

           ),
           Expanded(
             child: Container(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               decoration: const BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                       topRight: Radius.circular(10),
                       topLeft: Radius.circular(10)
                   )
               ),
               child:  TaskList(tasks),
             ),
           )
         ],
       ),
     );
   }
}


//
// setState(() {
// tasks.add(Task(name: taskText));
// });
