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
              items: List<String>.generate(10000, (i) => 'Item $i'),
            )));
  }
}

class HomePageList extends StatelessWidget {
  final List<String> items;
  const HomePageList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (items.length / 2).toInt(),
      prototypeItem: ListTile(
        title: Text(items.first),
      ),
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              color: Colors.amber,
              height: 50,
            ),
            Container(
              color: Colors.black,
              height: 100,
            ),
          ],
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
