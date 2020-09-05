import 'package:flutter/material.dart';

class ExAppBar extends StatelessWidget {
  ExAppBar({this.title}); // title을 parameter로 받음

  final Widget title; // StatelessWidget 필드는 항상 final 선언

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.0, // 논리적 픽셀단위 사용
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),

      // Row는 행에 배치. 즉, 수평적 선형 배치
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // onPressed 값 null : Disable 상태 설정
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class ExScaffold extends StatelessWidget {
  final _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          ExAppBar(
            title: Text(
              _title,
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Widget Example')
            ),
          ),
        ],
      ),
    );
  }
}

class ExTutorialHome extends StatelessWidget {
  ExTutorialHome({this.title});

  final title;

  @override
  Widget build(BuildContext context) {
    // Scaffold는 주요 머터리얼 컴포넌트 사용을 위한 위젯
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text('Example Tutorial home'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class ExButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GestureDetector 위젯은 보이지는 않지만 사용자의 제스처를 감지. 많은 위젯들이 GestureDetector를 사용한다.
    // IconButton, RaisedButton, FloatingActionButton 등은 사용자가 tab 했을 때 자신의 onPressed를 호출함.
    return GestureDetector(
      onTap: () {
        print('ExButton wa tapped!');
      },

      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}

// 사용자 Input을 위한 Widget과 Display를 위한 Widget 분리

// 현재 상태를 프레젠테이션 하는 Stateless Widget
class ExCounterDisplay extends StatelessWidget {
  ExCounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

// 사용자 입력 받는 Stateless Widget
class ExCounterIncrementor extends StatelessWidget {
  ExCounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text("Increment"),
    );
  }
}

class Counter extends StatefulWidget {
  // StatefultWidget : 아래 State를 위해 함께 구성되어야 하는 클래스.
  // 부모로부터 제공된 값, State의 build() 메소드를 위해 사용될 값을 담음.
  // 위젯 클래스의 모든 필드는 final로 선언.
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      // setState() 메소드는 Flutter 프레임워크에게 State가 변경됨을 알림.
      // 아래 bulid()가 다시 실행되고, 그로 인해 UI 갱신 값들이 반영 됨.
      // 만약 setState() 메소드를 호출하지 않고 _counter를 변경하면, build() 메소드는 호출되지 않음. 즉, UI변경 되지 않음.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ExCounterIncrementor(onPressed: _increment,),
        ExCounterDisplay(count: _counter,),
      ],
    );
  }
}