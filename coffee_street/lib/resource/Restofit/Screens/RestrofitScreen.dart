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
  StradaClient staradaClient;

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

    staradaClient = StradaClient(dio);
    Future.microtask(() async {
      final resp = await staradaClient.getHealth();

      print(resp);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restrofit Intro'),
      ),
      body: FutureBuilder(
        future: staradaClient.getHealth(),
        // initialData: [],
        builder: (_, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          final ids = snapshot.data;

          return Center(
            child: Text(ids.toString()),
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