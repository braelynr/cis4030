import 'package:flutter/material.dart';
import 'attractions.dart' as attractions;

void main() {
  runApp(new MaterialApp(home: new MyApp()));
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
        home: Home()
    );
  }
}

class Home extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lab Five Part A - Braelyn Rotman',
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.filter_alt),
              color: Colors.white,
              onPressed: () {
                showFilterDialog(context);
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
        body: const MyStatefulWidget(),
      ),
    );
  }
}

showFilterDialog(BuildContext context){
  // Create button
  Widget okButton = FlatButton(
    child: Text(
      "Apply",
      style: TextStyle(color: Colors.blue),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  showDialog(
    context: context,
    builder: (context) {
      String contentText = "Content of Dialog";
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text("Adjust Filters"),
            content: Wrap(
              spacing: 2.0, // gap between adjacent chips
              runSpacing: 2.0, // gap between lines
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      picnic = !picnic;
                    });
                  },
                  child: Card(
                    color: picnic ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: picnic ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      playground = !playground;
                    });
                  },
                  child: Card(
                    color: playground ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: playground ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      hiking = !hiking;
                    });
                  },
                  child: Card(
                    color: hiking ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: hiking ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      boating = !boating;
                    });
                  },
                  child: Card(
                    color: boating ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: boating ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      icecream = !icecream;
                    });
                  },
                  child: Card(
                    color: icecream ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: icecream ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      tea = !tea;
                    });
                  },
                  child: Card(
                    color: tea ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: tea ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      flowers = !flowers;
                    });
                  },
                  child: Card(
                    color: flowers ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: flowers ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      swimming = !swimming;
                    });
                  },
                  child: Card(
                    color: swimming ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: swimming ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      camping = !camping;
                    });
                  },
                  child: Card(
                    color: camping ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: camping ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
                      education = !education;
                    });
                  },
                  child: Card(
                    color: education ? Color.fromRGBO(255, 255, 255, 0.0) : Colors.white,
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
                            color: education ? Colors.black : Color.fromRGBO(255, 255, 255, 0.0),
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
          );;
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
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemCount: attractions.guelphAttractions.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => CardTapped(index),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                      child: Image.network(attractions.guelphAttractions[index]['imageURL']),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for(var item in attractions.guelphAttractions[index]['categories'])
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
                    if(attractions.guelphAttractions[index]['isFree'] == false)
                      Icon(
                        Icons.attach_money,
                        size: 30,
                      )
                    else if(attractions.guelphAttractions[index]['isFree'] == true)
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
                color: Color.fromRGBO(200,200,200,1),
                blurRadius: 15.0,
                offset: Offset(0.0, 15),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 30),
    );
  }

  CardTapped(int cardIndex){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ScheduleAttraction(index: cardIndex,)),
    );
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
                        Colors.black.withOpacity(0.7),
                        BlendMode.darken
                    ),
                    image: NetworkImage(attractions.guelphAttractions[index]['imageURL']),
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
                    for(var item in attractions.guelphAttractions[index]['categories'])
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

              if(attractions.guelphAttractions[index]['isFree'] == true)
                Center(
                  child: Text(
                      'Free',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              else if(attractions.guelphAttractions[index]['isFree'] == false)
                Icon(
                  Icons.attach_money,
                  size: 30,
                  color: Colors.white,
                )
              ,
              Padding(padding: EdgeInsets.all(16.0)),
              Center(
                child: FlatButton(
                  child: Text('Add', style: TextStyle(fontSize: 16.0),),
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
        )
      )
    );
  }
}