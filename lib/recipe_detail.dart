// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:recipes/models/recipe_model.dart';

class RecipeDetail extends StatefulWidget {
  RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}
// TODO: Add _RecipeDetailState here

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(
              widget.recipe.imageUrl,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.recipe.label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),

          // TODO: Add Expanded
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(7.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, index) {
                final ingredient = widget.recipe.ingredients[index];
                return Text("${ingredient.quantity * _sliderVal} - ${ingredient.measure} - ${ingredient.name}");
              },
            ),
          ),

          // TODO: Add Slider() here
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Slider(
              min: 1,
              max: 10,
              divisions: 9,
              label: '${_sliderVal * widget.recipe.servings} servings',
              onChanged: (double value) {
                setState(() {
                  _sliderVal = value.round();
                });
              },
              value: _sliderVal.toDouble(),
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
