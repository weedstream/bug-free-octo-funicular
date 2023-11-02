import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    Recipe("Nasi Goreng", "Makanan favorit yang lezat.", "https://img.kurio.network/ewrCJ9eRNpljU-80vrqWDQkN7o4=/1200x675/filters:quality(80)/https://kurio-img.kurioapps.com/20/10/10/a7e9eaa0-1c22-42b0-a11f-0a5ad1d30126.jpeg"),
    Recipe("Mie Goreng", "Mie goreng yang gurih dan pedas.", "mie_goreng.jpg"),
    Recipe("Ayam Bakar", "Ayam panggang dengan bumbu khas.", "ayam_bakar.jpg"),
    Recipe("Sate Ayam", "Sate ayam dengan bumbu kacang.", "sate_ayam.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resep Makanan"),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
    );
  }
}

class Recipe {
  final String title;
  final String description;
  final String imageUrl;

  Recipe(this.title, this.description, this.imageUrl);
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/${recipe.imageUrl}',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  recipe.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  recipe.description,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
