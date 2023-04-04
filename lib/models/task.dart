

class Task{
    String name;
   bool isDone;
  Task({required this.name, this.isDone = false});
   void toggleDone(){
     isDone= !isDone;
   }

   Set<Object> addTask(){
       return {name,isDone};
   }

}