import 'package:coffee_street/resource/Restofit/Restrofit/RestClient.dart';
import 'package:coffee_street/resource/Restofit/Restrofit/StradaClient.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.brown,
        // visual density
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RestrofitScreen(),
    );
  }
}

class RestrofitScreen extends StatefulWidget {
  @override
  _RestrofiScreenState createState() => _RestrofiScreenState();
}

class _RestrofiScreenState extends State<RestrofitScreen> {
  // RestClient client;
  StradaClient stradaClient;

  @override
  void initState() {
    super.initState();

    Dio dio = Dio();

    // client = RestClient(dio);
    // Future.microtask(() async {
    //   final resp = await client.getTopNews();
    //
    //   print(resp);
    // });

    stradaClient = StradaClient(dio);
    Future.microtask(() async {
      // final resp = await stradaClient.getHealth();
      // print(resp.toString());

      final resp = await stradaClient.getToken("01056033399");
      print(resp.accessToken.toString());
    });
  }

//   renderNewsCard({
//     @required News news,
// }){
//     return Card(
//       child: Column(
//         children: [
//           Text(news.id.toString()),
//           Text(news.title),
//           Text(news.url),
//         ],
//       ),
//     );
//   }

  renderPong({
    @required Pong pong,
}){
    return Card(
      child: Column(
        children: [
          Text(pong.pong.toString()),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrofit Intro'),
      ),
      body: Center(
        child: Text('Retrofit Test'),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Retrofit Intro'),
      ),
      body: FutureBuilder(
        // future: stradaClient.getHealth(),
        // future: stradaClient.getPingPong(),
        future: stradaClient.getToken('01056033399'),
        // initialData: [],
        builder: (_, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final ids = snapshot.data;

          return Center(
            // child: renderPong(pong: snapshot.data),
            // child : Text(snapshot.data.pong.toString()),
            child: Text('test'),
          );
        },
        // future: client.getTopNews(),
        // initialData: [],
        // builder: (_, AsyncSnapshot snapshot){
        //   if(snapshot.connectionState == ConnectionState.waiting) {
        //     return Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   }
        //
        //   final ids = snapshot.data;
        //
        //   return ListView.builder(
        //     itemCount: ids.length,
        //     itemBuilder: (_, index){
        //       return FutureBuilder(
        //         future: client.getNewsDetail(id: ids[index]),
        //         builder: (_, AsyncSnapshot snapshot){
        //           if(snapshot.connectionState == ConnectionState.waiting) {
        //             return Center(
        //               child: CircularProgressIndicator(),
        //             );
        //           }
        //
        //           return renderNewsCard(news: snapshot.data);
        //         },
        //       );
        //     },
        //   );
        // },
      ),
    );
  }
}