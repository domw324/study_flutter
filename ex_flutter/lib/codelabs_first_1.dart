import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FirstFlutterApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      home:RandomWords(),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Random Words'),
//          centerTitle: true,
//        ),
//        body: Center(
//          //child: Text('Hello World'),   // Replace this text...
//          //child: Text(wordPair.asPascalCase),  // With this text.
//          child: RandomWords(),  // With this text.
//        ),
//      ),
    );
  }
}

// Case_02 : 상태저장 + 무한 스크롤(스크롤에 따라 Data 추가)
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize:  18.0);

  // #docregion _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }
  // #enddocregion _buildSuggestions

  // #docregion _buildRow
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
  // #enddocregion _buildRow

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  // #enddocregion RWS-build
}

// Case_01 : 상태 저장되는 위젯
//class _RandomWordsState extends State<RandomWords> {
//  @override
//  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);
//  }
//}