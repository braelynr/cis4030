import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Lab Three Part A - Braelyn Rotman',
            ),
          ),
          body: const MyStatefulWidget(),
        )
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 135,
                      width: 120,
                      ),
                    AnimatedContainer(
                      color: selected ? Color.fromRGBO(0, 0, 0, 0.0) : Color.fromRGBO(0, 0, 0, 0.5),
                      height: 135,
                      width: 120,
                      duration: const Duration(seconds: 0),
                      alignment:
                        selected ? Alignment.topRight : Alignment.topRight,
                      child: Icon(
                        Icons.check_circle,
                        color: selected ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
                        size: 25,
                      )
                    ),
                  ]
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}