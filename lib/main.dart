import 'package:flutter/material.dart';
import 'models/recipe_model.dart';
import 'recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Recipe Calculator")),
      body: ListView.builder(
        itemCount: Recipe.samples.length,
        itemBuilder: (context, index) {
          // TODO: Update to return Recipe card
          // TODO: Add GestureDetector
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  // TODO: Replace return with return RecipeDetail()
                  return RecipeDetail(recipe: Recipe.samples[index]);
                  // SafeArea(child: const Text("Hello"));
                }),
              );
            },
            child: buildRecipeCard(Recipe.samples[index]),
          );
        },
      ),
    );
  }

  // TODO: Add buildRecipeCard() here
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            const SizedBox(height: 14.0),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
