import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child : Image.asset( // pubspec.yaml>flutter:assets: 이미지의 경로 등록 후 image.assert으로 사용
            'img/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return DetailScreen();
            })
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child : Image.asset( // pubspec.yaml>flutter:assets: 이미지의 경로 등록 후 image.assert으로 사용
            'img/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}