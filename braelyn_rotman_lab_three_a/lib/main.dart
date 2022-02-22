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
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected5 = false;
  bool selected6 = false;
  bool selected7 = false;
  bool selected8 = false;
  bool selected9 = false;
  bool selected10 = false;
  bool selected11 = false;
  bool selected12 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected1 = !selected1;
                    });
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.red,
                        height: 135,
                        width: 115,
                        ),
                      AnimatedContainer(
                        color: selected1 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                        height: 135,
                        width: 115,
                        duration: const Duration(seconds: 0),
                        alignment:
                          selected1 ? Alignment.topRight : Alignment.topRight,
                        child: Icon(
                          Icons.check_circle,
                          color: selected1 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                          size: 25,
                        )
                      ),
                    ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected2 = !selected2;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected2 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected2 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected3 = !selected3;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected3 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected3 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected3 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected4 = !selected4;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected4 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected4 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected4 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected5 = !selected5;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected5 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected5 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected6 = !selected6;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.blue,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected6 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected6 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected6 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected7 = !selected7;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.green,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected7 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected7 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected8 = !selected8;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.green,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected8 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected8 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected9 = !selected9;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.green,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected9 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected9 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected9 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected10 = !selected10;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.yellow,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected10 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected10 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected11 = !selected11;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.yellow,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected11 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected1 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected11 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected12 = !selected12;
                    });
                  },
                  child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.yellow,
                          height: 135,
                          width: 115,
                        ),
                        AnimatedContainer(
                            color: selected12 ? Color.fromRGBO(0, 0, 0, 0.5) : Color.fromRGBO(0, 0, 0, 0.0),
                            height: 135,
                            width: 115,
                            duration: const Duration(seconds: 0),
                            alignment:
                            selected12 ? Alignment.topRight : Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: selected12 ? Colors.white : Color.fromRGBO(255, 255, 255, 0.0),
                              size: 25,
                            )
                        ),
                      ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                ),
              ],
            ),
          ],
        ),
      );
  }
}333