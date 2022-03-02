import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'recipes.dart' as recipes;

enum Page
{
  RECIPES,
  FAVOURITES,
  SETTINGS
}

Page section = Page.RECIPES;

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: new MyApp()));
}

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Favourite Recipes',
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Settings',
      ),
    );
  }
}

class Recipe extends StatefulWidget{
  const Recipe({Key? key}) : super(key: key);

  @override
  RecipeWidget createState() => RecipeWidget();
}

class RecipeWidget extends State<Recipe>{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: recipes.temp_recipe_list.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPage(index: index)),
            );
          },
          child: Container(
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                        recipes.temp_recipe_list[index]['imageUrl']),
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
                            if(recipes.temp_recipe_list[index]['isFavourite'] == false)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    recipes.temp_recipe_list[index]['isFavourite'] = !recipes.temp_recipe_list[index]['isFavourite'];
                                  });
                                },
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.redAccent,
                                )
                              )
                            else
                              if(recipes.temp_recipe_list[index]['isFavourite'] == true)
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        recipes.temp_recipe_list[index]['isFavourite'] = !recipes.temp_recipe_list[index]['isFavourite'];
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.redAccent,
                                    )
                                )
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
                            Text(describeEnum(
                                recipes.temp_recipe_list[index]['cookingTime']),
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
                            Text(describeEnum(recipes
                                .temp_recipe_list[index]['amountOfIngredients']),
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
                            Text(describeEnum(recipes
                                .temp_recipe_list[index]['recipeDifficulty']),
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
          ),
        );
      },
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Five Part B - Braelyn Rotman',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget> [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Recipe App',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text('Recipes'),
              onTap: () {
                Navigator.pop(context);
                section = Page.RECIPES;
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyApp()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.redAccent,),
              title: const Text('Favourite Recipes'),
              onTap: () {
                Navigator.pop(context);
                section = Page.FAVOURITES;
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyApp()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                section = Page.SETTINGS;
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyApp()));
              },
            ),
          ],
        ),
      ),
      body: getBody(),
    );
  }
}

getBody(){
  if(section == Page.RECIPES)
    return Recipe();
  else if(section == Page.FAVOURITES)
    return FavouritePage();
  else if(section == Page.SETTINGS)
    return SettingsPage();
}

class InfoAppBar extends StatefulWidget implements PreferredSizeWidget {
  InfoAppBar(this.index);

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  final int index;

  @override
  _InfoAppBar createState() => _InfoAppBar(index);
}

class _InfoAppBar extends State<InfoAppBar>{
  _InfoAppBar(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(recipes.temp_recipe_list[index]['recipeName']),
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back_ios),
        onPressed: () {
         // Navigator.of(context).pop(); // favourite icon doesnt update when only this is here
         Navigator.push(context, new MaterialPageRoute(builder: (context) => new MyApp()));
        }
      ),
      actions: <Widget>[
        if(recipes.temp_recipe_list[index]['isFavourite'] == true)
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          onPressed: () {
            setState(() {
              recipes.temp_recipe_list[index]['isFavourite'] = !recipes.temp_recipe_list[index]['isFavourite'];
            });
          },
        )
        else if(recipes.temp_recipe_list[index]['isFavourite'] == false)
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {
                recipes.temp_recipe_list[index]['isFavourite'] = !recipes.temp_recipe_list[index]['isFavourite'];
              });
            },
          )
      ],
    );
  }
}

class InfoPage extends StatelessWidget {
  final int index;
  const InfoPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InfoAppBar(index),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(recipes.temp_recipe_list[index]['imageUrl']),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: ListView(
                //shrinkWrap: true,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Author: ',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                          text: recipes.temp_recipe_list[index]['recipeAuthor'],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ]
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    recipes.temp_recipe_list[index]['description'],
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '1. ' + recipes.temp_recipe_list[index]['ingredients'][0],
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
                      children: [
                        for(var i = 1 ; i < recipes.temp_recipe_list[index]['ingredients'].length ; i++)
                          TextSpan(
                            text: '    ' + (i + 1).toString() + '. ' + recipes.temp_recipe_list[index]['ingredients'][i],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                          )
                      ]
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    'Time to Cook:',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    recipes.temp_recipe_list[index]['cookTime'].toString() + ' mins',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text(
                    'Directions:',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  for(int i = 0 ; i < recipes.temp_recipe_list[index]['directions'].length ; i++)
                    Text(
                      (i + 1).toString() + '. ' + recipes.temp_recipe_list[index]['directions'][i],
                      style: TextStyle(fontSize: 16),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}