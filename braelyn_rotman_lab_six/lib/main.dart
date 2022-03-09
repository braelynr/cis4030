import 'package:flutter/material.dart';
import 'attractions.dart' as attractions;

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: new MyApp()));
}

bool picnic = true;
bool playground = true;
bool hiking = true;
bool boating = true;
bool icecream = true;
bool tea = true;
bool flowers = true;
bool swimming = true;
bool camping = true;
bool education = true;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);
  @override
  Home createState() => Home();
}

class Home extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _options = <Widget>[
    MyStatefulWidget(),
    Schedule(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  refreshFilters(){
    setState(() {
      print("refreshFilters()");
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Six - Braelyn Rotman',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.filter_alt),
            color: Colors.white,
            onPressed: () {
              showFilterDialog(context, refreshFilters);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Attractions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Scheduled',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "plus",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddAttraction()),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: _options.elementAt(_selectedIndex),
      ),
    );
  }
}

showFilterDialog(BuildContext context, Function refreshFilters) {
  bool pictemp = picnic;
  bool playtemp = playground;
  bool htemp = hiking;
  bool btemp = boating;
  bool itemp = icecream;
  bool ttemp = tea;
  bool ftemp = flowers;
  bool stemp = swimming;
  bool ctemp = camping;
  bool etemp = education;

  // Create button
  Widget okButton = FlatButton(
    child: Text(
      "Apply",
      style: TextStyle(color: Colors.blue),
    ),
    onPressed: () {
      picnic = pictemp;
      playground = playtemp;
      hiking = htemp;
      boating = btemp;
      icecream = itemp;
      tea = ttemp;
      flowers = ftemp;
      swimming = stemp;
      camping = ctemp;
      education = etemp;
      refreshFilters();
      Navigator.of(context, rootNavigator: true).pop('dialog');
    },
  );

  double getPaddingTest() {
    if (MediaQuery.of(context).orientation == Orientation.landscape) return 200;
    return 40; // default value according to flutter docs
  }

  // maybe use temp variables and only update actual ones when apply button is clicked
  showDialog(
    context: context,
    builder: (context) {
      String contentText = "Content of Dialog";
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("Adjust Filters"),
            // if(MediaQuery.of(context).orientation == Orientation.landscape)
            //  insetPadding: EdgeInsets.symmetric(horizontal: 200)
            insetPadding: EdgeInsets.symmetric(horizontal: getPaddingTest()),
            content: Wrap(
              spacing: 2.0, // gap between adjacent chips
              runSpacing: 2.0, // gap between lines
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pictemp = !pictemp;
                    });
                  },
                  child: Card(
                    color: pictemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Picnic'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 4.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: pictemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      playtemp = !playtemp;
                    });
                  },
                  child: Card(
                    color: playtemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Playground'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 7.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: playtemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      htemp = !htemp;
                    });
                  },
                  child: Card(
                    color: htemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Hiking'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 4.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: htemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      btemp = !btemp;
                    });
                  },
                  child: Card(
                    color: btemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Boating'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 5.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: btemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      itemp = !itemp;
                    });
                  },
                  child: Card(
                    color: itemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Ice-Cream'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 6.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: itemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ttemp = !ttemp;
                    });
                  },
                  child: Card(
                    color:
                        ttemp ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Tea'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 3.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: ttemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ftemp = !ftemp;
                    });
                  },
                  child: Card(
                    color: ftemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Flowers'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 5.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: ftemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      stemp = !stemp;
                    });
                  },
                  child: Card(
                    color: stemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Swimming'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 7.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: stemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      ctemp = !ctemp;
                    });
                  },
                  child: Card(
                    color: ctemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Camping'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 6.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: ctemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      etemp = !etemp;
                    });
                  },
                  child: Card(
                    color: etemp
                        ? Color.fromRGBO(255, 255, 255, 0.0)
                        : Colors.white,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Education'),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: 6.5,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.check_circle,
                            color: etemp
                                ? Colors.black
                                : Color.fromRGBO(255, 255, 255, 0.0),
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              okButton,
            ],
          );
          ;
        },
      );
    },
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      child: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemCount: attractions.guelphAttractions.length,
        itemBuilder: (BuildContext context, int index) {
          return attractionCard(index);
        },
        separatorBuilder: (context, index) => SizedBox(height: 10),
      ),
    );
  }

  CardTapped(int cardIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ScheduleAttraction(
                index: cardIndex,
              )),
    );
  }

  attractionCard(int index) {
    if ((attractions.guelphAttractions[index]['categories'].contains("Picnic") &&
            picnic == false) ||
        (attractions.guelphAttractions[index]['categories']
                .contains("Playground") &&
            playground == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Hiking") &&
            hiking == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Boating") &&
            boating == false) ||
        (attractions.guelphAttractions[index]['categories']
                .contains("Ice-Cream") &&
            icecream == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Tea") &&
            tea == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Flowers") &&
            flowers == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Swimming") &&
            swimming == false) ||
        (attractions.guelphAttractions[index]['categories'].contains("Camping") &&
            camping == false) ||
        (attractions.guelphAttractions[index]['categories']
                .contains("Education") &&
            education == false)) {
      return Container();
    } else {
      return Container(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => CardTapped(index),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text(
                    '${attractions.guelphAttractions[index]['title']}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Hero(
                    tag: 'imageHero$index',
                    child: Image.network(
                        attractions.guelphAttractions[index]['imageURL']),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (var item in attractions.guelphAttractions[index]
                          ['categories'])
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(item),
                          ),
                        )
                    ],
                  ),
                  Text(
                    '${attractions.guelphAttractions[index]['address']}',
                  ),
                  if (attractions.guelphAttractions[index]['isFree'] == false)
                    Icon(
                      Icons.attach_money,
                      size: 30,
                    )
                  else if (attractions.guelphAttractions[index]['isFree'] ==
                      true)
                    Icon(
                      Icons.money_off,
                      size: 30,
                    )
                ],
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(200, 200, 200, 1),
              blurRadius: 15.0,
              offset: Offset(0.0, 15),
            ),
          ],
        ),
      );
    }

    // @override
    // Widget build(BuildContext context) {
    //
    // }
  }
}

class ScheduleAttraction extends StatelessWidget {
  final int index;
  const ScheduleAttraction({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule Attraction'),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Hero(
              tag: 'imageHero$index',
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.darken),
                    image: NetworkImage(
                        attractions.guelphAttractions[index]['imageURL']),
                  ),
                ),
              ),
            ),
          ),
          ListView(
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Center(
                child: Text(
                  attractions.guelphAttractions[index]['title'],
                  style: TextStyle(color: Colors.white, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var item in attractions.guelphAttractions[index]
                        ['categories'])
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(item),
                        ),
                      )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: Text(
                  'Description',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
              Center(
                child: Text(
                  attractions.guelphAttractions[index]['description'],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: Text(
                  'Address',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
              Center(
                child: Text(
                  attractions.guelphAttractions[index]['address'],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: Text(
                  'Cost',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              ),
              if (attractions.guelphAttractions[index]['isFree'] == true)
                Center(
                  child: Text(
                    'Free',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              else if (attractions.guelphAttractions[index]['isFree'] == false)
                Icon(
                  Icons.attach_money,
                  size: 30,
                  color: Colors.white,
                ),
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: FlatButton(
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AddAttraction extends StatelessWidget {
  const AddAttraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Attraction'),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
            child: Text(
          'Add Attraction',
        )));
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text(
      'Schedule Page',
    )));
  }
}
