import 'package:flutter/material.dart';
class ToDolist extends StatefulWidget {
  const ToDolist({super.key});

  @override
  State<ToDolist> createState() => _ToDolistState();
}

class _ToDolistState extends State<ToDolist> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks=[];
  void addtask(String task){
    setState(() {
      _tasks.add(task);

    });
    _controller.clear();
  }
  void delettask(int index){
    setState(() {
      _tasks.removeAt(index);
    });
  }
  void _toggleTaskCompletion(int index){
    setState(() {
      _tasks[index]="✅ ${_tasks[index]}";

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: [Colors.lightBlueAccent, Colors.pinkAccent],
           begin: Alignment.topLeft,
           end: Alignment.bottomRight,
         )
       ),
        ),
        title: const Text("TODO LIST",
        style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.pinkAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
          ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Add New Task",
              style: TextStyle(
                fontSize: 20.0
              ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _controller,
                onFieldSubmitted: (value){
                  if(value.isNotEmpty){
                    addtask(value);
                  }

                },
              ),
              SizedBox(height: 20,),
              Text("Task",
              style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold
              ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: _tasks.length,
                    itemBuilder:(context,index){
                      return ListTile(
                        title: Text(_tasks[index]),
                        trailing: IconButton(
                          icon: Icon(Icons.check),
                          onPressed: (){
                            _toggleTaskCompletion(index);
                          },
                        ),
                       onLongPress: (){
                          delettask(index);
                       },
                      );
                    },
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
