import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExWidgets(),
    );
  }
}

class ExWidgets extends StatefulWidget {
  @override
  _ExWidgetsState createState() => _ExWidgetsState();
}

class _ExWidgetsState extends State<ExWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("위젯 모음"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text("ListView"),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index){
                    return Container(
                      width: 145.0,
                      margin: EdgeInsets.symmetric(
                          horizontal: 5.0
                      ),
                      color: Colors.grey[300],
                      child: Center(
                        child: Text("ListView $index"),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text("GridView"),
              ),
              Container(
                height: 300.0,
                child: GridView.builder(
                  padding: EdgeInsets.all(5.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index){
                    return Container(
                      color: Colors.grey[400],
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text("GridView $index"),
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: Colors.blue[200],
                margin: EdgeInsets.all(5.0),
                height: 500.0,
                child: Center(
                  child: Text(
                    "Contents",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}