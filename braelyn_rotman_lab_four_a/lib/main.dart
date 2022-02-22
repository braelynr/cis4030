import 'package:flutter/material.dart';
import 'attractions.dart' as attractions;

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
        appBar: AppBar(
          title: Text(
            'Lab Four Part A - Braelyn Rotman',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemCount: attractions.guelphAttractions.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
                      Image.network(attractions.guelphAttractions[index]['imageURL']),
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
              decoration: new BoxDecoration(
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
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}