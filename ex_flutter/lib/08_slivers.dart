import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExSliverAppbar(),
  ));
}

class ExSliverAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('ExSliverAppbar'),
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('img/lake.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.blue),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.blue),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}