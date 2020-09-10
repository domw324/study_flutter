import 'package:flutter/material.dart';

// Flutter 에서는 화면이나 페이지를 Route 라고 한다. Route 또한 Widget 이다.
// Route = Activity(android) = View Controller(ios)

void main() => runApp(
  MaterialApp(
    home: FirstRoute(),
  )
);

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fist Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()), // Route Stack 에 추가
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: () {
            Navigator.pop(context); // Route Stack 에서 제거
          },
        ),
      ),
    );
  }
}