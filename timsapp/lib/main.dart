import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Color randomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter is Fun!'),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: false,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text('Hi Mom!'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Colors.amberAccent,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Align(
                  child: Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  child: Icon(Icons.verified),
                  alignment: Alignment.center,
                )
              ],
            ),
            WidgetBoi(),
            Shark(),
          ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Buisness'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
      ]),
      drawer: Drawer(
        child: ListView.builder(
            addAutomaticKeepAlives: false,
            itemBuilder: (_, index) {
              return Container(
                color: randomColor(),
                width: 500,
                height: 500,
              );
            }),
      ),
    ));
  }
}

class WidgetBoi extends StatefulWidget {
  const WidgetBoi({super.key});

  @override
  State<WidgetBoi> createState() => _WidgetBoiState();
}

class _WidgetBoiState extends State<WidgetBoi> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text('$count'),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          color: Colors.amberAccent,
          height: 100,
          width: 100,
        ),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            }),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                count--;
              });
            })
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Flutter is Fun!'),
      ),
    ));
  }
}

class Shark extends StatelessWidget {
  const Shark({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PageTwo(),
              ));
        },
        child: Text('About'));
  }
}
