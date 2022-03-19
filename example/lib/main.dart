import 'dart:convert';

import 'package:example/sample_json.dart';
import 'package:flutter/material.dart';
import 'package:iso8601_offset/iso8601_offset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    const sample = '''{
  "id": "sample",
  "date_time": "2022-03-20 18:30:00+09:00"
}
    ''';
    final obj = SampleJson.fromJson(json.decode(sample));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('DateTime is created by "DateTime.now"'),
            const SizedBox(
              height: 8,
            ),
            Text('toIso8601String            = ${now.toIso8601String()}'),
            Text('toIso8601UtcString      = ${now.toIso8601UtcString()}'),
            Text('toIso8601OffsetString = ${now.toIso8601OffsetString()}'),
            const SizedBox(
              height: 16,
            ),
            const Text('JSON converter'),
            const SizedBox(
              height: 8,
            ),
            const Text('data: $sample'),
            Text('result: $obj'),
          ],
        ),
      ),
    );
  }
}
