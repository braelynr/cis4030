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
              'Lab Three Part B - Braelyn Rotman',
            ),
          ),
          body: const MyStatefulWidget(),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool disabledButton = false;
  var display = '0';
  var operator = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max, // apparently this is the default and does not need to be specified
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    display,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Expanded(
                  flex: 32,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('Clear'),
                        onPressed: () {
                          userInput('C');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('/'),
                        onPressed: disabledButton ? null : (){userInput('/');},
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Row(
              // row 2
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('7'),
                        onPressed: () {
                          userInput('7');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('8'),
                        onPressed: () {
                          userInput('8');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('9'),
                        onPressed: () {
                          userInput('9');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('*'),
                        onPressed: disabledButton ? null : (){userInput('*');},
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Row(
              // row 3
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('4'),
                        onPressed: () {
                          userInput('4');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('5'),
                        onPressed: () {
                          userInput('5');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('6'),
                        onPressed: () {
                          userInput('6');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('-'),
                        onPressed: disabledButton ? null : (){userInput('-');},
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Row(
              // row 4
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('1'),
                        onPressed: () {
                          userInput('1');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('2'),
                        onPressed: () {
                          userInput('2');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('3'),
                        onPressed: () {
                          userInput('3');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('+'),
                        onPressed: disabledButton ? null : (){userInput('+');},
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Expanded(
            child: Row( // row 5
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('0'),
                        onPressed: () {
                          userInput('0');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Expanded(
                  flex: 32,
                  child: Container(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        child: Text('='),
                        onPressed: () {
                          userInput('=');
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 32)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
        ],
      ),
    );
  }

  void userInput(String buttonValue){
    if(buttonValue != '/' && buttonValue != '*' && buttonValue != '-' && buttonValue != '+' && buttonValue != '=' && buttonValue != 'C'){
      if(display != '0'){
        setState(() {
          display = display + buttonValue;
        });
      }
      else{
        setState(() {
          display = buttonValue;
        });
      }
    }
    else if(buttonValue == 'C'){
      setState(() {
        operator = '';
        display = '0';
        disabledButton = false;
      });
    }
    else if(buttonValue == '='){
      setState(() {
        display = parseEquation();
        disabledButton = false;
      });
    }
    else{ // operator buttons
      setState(() {
        operator = buttonValue;
        display = display + buttonValue;
        disabledButton = true;
      });
    }
  }

  String parseEquation(){
    var values = display.split(operator);
    double result = 0;

    switch(operator){
      case '/': {
        result = double.parse(values[0]) / double.parse(values[1]);
        break;
      }
      case '*': {
        result = double.parse(values[0]) * double.parse(values[1]);
        break;
      }
      case '-': {
        result = double.parse(values[0]) - double.parse(values[1]);
        break;
      }
      case '+': {
        result = double.parse(values[0]) + double.parse(values[1]);
        break;
      }
      default: {
        result = double.parse(display);
        break;
      }
    }
    return result.toString();
  }
}
