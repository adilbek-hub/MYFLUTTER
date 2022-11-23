import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/todo_model.dart';
import 'package:todo/view/add_todo_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // int number = 0;

  // void _intNum() {
  //   setState(() {
  //     number++;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    readTodo();
  }

  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('todo').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[400],
        title: const Text('MyHomePage'),
        elevation: 0,
      ),
      // Создает новый [StreamBuilder], который строит себя на основе последнего моментального снимка
      //взаимодействия с указанным [потоком] и чья стратегия сборки задается [builder].
      body: StreamBuilder(
          stream: readTodo(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error!.toString()),
              );
            } else if (snapshot.hasData) {
              final List<Todo> todos = snapshot.data!.docs
                  .map((e) => Todo.fromMap(e.data() as Map<String, dynamic>))
                  .toList();
              return ListView.builder(
                  itemCount: todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    final todo = todos[index];
                    return ListTile(
                      title: Text(todo.title),
                      trailing: Checkbox(
                        value: todo.isComplated,
                        onChanged: (g) {},
                      ),
                      subtitle: Column(
                        children: [
                          Text(todo.description),
                          Text(todo.author),
                        ],
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text('Катачылык бар'),
              );
            }
          })),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const AddTodo())));
        }),
        label: Text('above'),
        icon: Icon(
          Icons.publish,
        ),
        backgroundColor: Colors.pink[400],
      ),
    );
  }
}
