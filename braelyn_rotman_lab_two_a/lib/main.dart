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
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
              'Lab Two Part A - Braelyn Rotman',
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Card(
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      height: 70,
                      alignment: Alignment.center, // where to position the child
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle
                        ),
                        alignment: Alignment.center, // where to position the child
                        child: Text(
                          "Mon"
                        )
                      ),
                    ),
                    Container(
                        width: 300,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                                "task one"
                            ),
                            Text(
                                "task two"
                            ),
                          ]
                        ),
                    )
                  ]
                ),
              ),
              Card(
                child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        height: 70,
                        alignment: Alignment.center, // where to position the child
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center, // where to position the child
                          child: Text(
                              "Tue"
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        alignment: Alignment.center,
                        child: Column(
                            children: [
                              Text(
                                  "task one"
                              ),
                              Text(
                                  "task two"
                              ),
                            ]
                        ),
                      )
                    ]
                ),
              ),
              Card(
                child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        height: 70,
                        alignment: Alignment.center, // where to position the child
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center, // where to position the child
                          child: Text(
                              "Wed"
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        alignment: Alignment.center,
                        child: Column(
                            children: [
                              Text(
                                  "task one"
                              ),
                              Text(
                                  "task two"
                              ),
                            ]
                        ),
                      )
                    ]
                ),
              ),
              Card(
                child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        height: 70,
                        alignment: Alignment.center, // where to position the child
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center, // where to position the child
                          child: Text(
                              "Thu"
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        alignment: Alignment.center,
                        child: Column(
                            children: [
                              Text(
                                  "task one"
                              ),
                              Text(
                                  "task two"
                              ),
                            ]
                        ),
                      )
                    ]
                ),
              ),
              Card(
                child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: const EdgeInsets.all(8.0),
                        height: 70,
                        alignment: Alignment.center, // where to position the child
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center, // where to position the child
                          child: Text(
                              "Fri"
                          )
                        ),
                      ),
                      Container(
                        width: 300,
                        alignment: Alignment.center,
                        child: Column(
                            children: [
                              Text(
                                  "task one"
                              ),
                              Text(
                                  "task two"
                              ),
                            ]
                        ),
                      )
                    ]
                ),
              ),
            ],
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}