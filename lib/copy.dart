import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeApp(),
    );
  }
}

class RecipeApp extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe('Spaghetti Carbonara', 'Pasta with creamy sauce', 'spaghetti.jpg'),
    Recipe('Chicken Parmesan', 'Breaded chicken with marinara sauce', 'chicken.jpg'),
    Recipe('Chocolate Cake', 'Delicious chocolate cake', 'chocolate_cake.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) => RecipeCard(recipe: recipes[index]),
      ),
    );
  }
}

class Recipe {
  final String name;
  final String description;
  final String image;

  Recipe(this.name, this.description, this.image);
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(recipe.image, height: 150, width: 150),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(recipe.name, style: TextStyle(fontSize: 20)),
                Text(recipe.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
