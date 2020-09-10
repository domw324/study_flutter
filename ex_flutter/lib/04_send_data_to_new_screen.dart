import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 화면 = widget. to-do List 를 만들고 tap했을 때 그 내용(새 화면)으로 이동하는 앱

// to-do 정보를 담을 클래스
class Todo {
  Todo(this.title, this.description);

  final String title;
  final String description;
}

void main() {
  runApp(MaterialApp(
    title: 'Passing Data',
    home: TodosScreen(
      todos : List.generate(
        20,
        (i) => Todo(
          'TODO $i',
          'A description of what needs to be done for Todo $i',
        ),
      ),
    ),
  ));
}

class TodosScreen extends StatelessWidget {
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key, @required this.todo}) // @requried는 가변 파라메터를 나타낸다. 값을 선택적으로 넣을 수 있다.
      : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}