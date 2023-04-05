import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? nullLengthGridView;
  int? workingLengthGridView = 4;
  int? nullLengthListView;
  int? workingLengthListView = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // GridView.builder(
          //   physics: const NeverScrollableScrollPhysics(),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //     childAspectRatio: 2,
          //   ),
          //   shrinkWrap: true,
          //   itemCount: nullLengthGridView,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Text('$index');
          //   },
          // ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
            ),
            shrinkWrap: true,
            itemCount: workingLengthGridView,
            itemBuilder: (BuildContext context, int index) {
              return Text('$index');
            },
          ),
          // ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: nullLengthListView,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Text('$index');
          //   },
          // ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: workingLengthListView,
            itemBuilder: (BuildContext context, int index) {
              return Text('$index');
            },
          ),
        ],
      ),
    );
  }
}
