// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Todo {
  Todo(
      {required this.title,
      required this.description,
      required this.isComplated,
      required this.author});
  final String title;
  final String description;
  final bool isComplated;
  final String author;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'isComplated': isComplated,
      'author': author,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] as String,
      description: map['description'] as String,
      isComplated: map['isComplated'] as bool,
      author: map['author'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromMap(json.decode(source) as Map<String, dynamic>);
}
