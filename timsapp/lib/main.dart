import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: const Text('APPLICATION',
                  style: TextStyle(color: Colors.white)),
            ),
            body: HomePageList(
              items: List<String>.generate(50, (i) => 'Item $i'),
            )));
  }
}

class HomePageList extends StatelessWidget {
  final List<String> items;
  const HomePageList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: (items.length).toInt(),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(30),
          color: Colors.black,
          child: Center(
              child: Text(
            (index * 2 + 1).toString(),
            style: TextStyle(color: Colors.white),
          )),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
            padding: EdgeInsets.all(30),
            color: Colors.white,
            child: Column(
              children: [
                Text("a"),
                Text("a"),
                Text("a"),
                Text("a"),
                Text("a"),
                Text("a"),
                Text("a"),
              ],
            )
            /*child: Center(
            child: Text(
              (index * 2 + 2).toString() + "a\n\n\n\n\n\n\a\n\n\n\a",
              style: TextStyle(color: Colors.white),
            ),
          ),*/
            );
      },
    );
  }
}

class Post extends StatelessWidget {
  final List<String> items;
  final int index;
  const Post({super.key, required this.items, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Stack(children: [
      Container(
        color: Colors.black,
        height: 200,
        child: Center(
          child: Text(items[index * 2], style: TextStyle(color: Colors.white)),
        ),
      ),
      Container(
        color: Colors.black,
        height: 100,
        child: Center(
          child: Text(items[index * 2], style: TextStyle(color: Colors.white)),
        ),
      ),
    ]));
  }
}
