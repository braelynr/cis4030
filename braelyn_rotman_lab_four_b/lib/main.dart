import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'recipes.dart' as recipes;

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
            'Lab Four Part B - Braelyn Rotman',
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
          ),
          itemCount: recipes.temp_recipe_list.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(recipes.temp_recipe_list[index]['imageUrl']),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6),
                          BlendMode.darken
                      ),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(recipes.temp_recipe_list[index]['recipeAuthor'],
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.redAccent,
                              ),
                              Text(recipes.temp_recipe_list[index]['totalLikes'].toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(recipes.temp_recipe_list[index]['recipeName'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(1.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 18,
                                color: Colors.white,
                              ),
                              Text(describeEnum(recipes.temp_recipe_list[index]['cookingTime']),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                              Icon(
                                Icons.shopping_bag,
                                size: 18,
                                color: Colors.white,
                              ),
                              Text(describeEnum(recipes.temp_recipe_list[index]['amountOfIngredients']),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                              Icon(
                                Icons.help,
                                size: 18,
                                color: Colors.white,
                              ),
                              Text(describeEnum(recipes.temp_recipe_list[index]['recipeDifficulty']),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}