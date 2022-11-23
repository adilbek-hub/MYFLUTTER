import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/model/todo_model.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final _Formkey = GlobalKey<FormState>();
  bool _isCompleted = false;
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _author = TextEditingController();

  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todo = Todo(
        title: _title.text,
        description: _description.text,
        isComplated: _isCompleted,
        author: _author.text);
    await db.collection('todo').add(todo.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTodo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _Formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _title,
                decoration: const InputDecoration(
                    hintText: 'title', border: OutlineInputBorder()),
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "Plase enter title name";
                  }
                  return null;
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _description,
                maxLines: 8,
                decoration: const InputDecoration(
                    hintText: 'description', border: OutlineInputBorder()),
              ),
              //плитка со списком флажков
              CheckboxListTile(
                  title: const Text('is completed'),
                  value: _isCompleted,
                  //на Изменено
                  onChanged: (v) {
                    setState(() {
                      _isCompleted = v ?? true;
                    });
                  }),
              TextFormField(
                controller: _author,
                decoration: const InputDecoration(
                    hintText: 'author', border: OutlineInputBorder()),
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "Plase enter author name";
                  }
                  return null;
                }),
              ),
              const SizedBox(
                height: 15,
              ),

              ElevatedButton.icon(
                onPressed: (() async {
                  if (_Formkey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return const CupertinoAlertDialog(
                            title: Text(
                              'Сураныч, күтө туруңуз!',
                              style: TextStyle(color: Colors.orange),
                            ),
                            content: Center(
                              child: CupertinoActivityIndicator(
                                radius: 20,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          );
                        }));
                    Navigator.popUntil(context, (route) => route.isFirst);
                    await addTodo();
                  }
                }),
                icon: const Icon(Icons.publish),
                label: const Text('TODO'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
