class RecipeModel {
  String label;
  String imageUrl;

  // TODO: Add servings and ingredients here
  RecipeModel(this.label, this.imageUrl);

  // TODO: Add List<Recipe> here
  static List<RecipeModel> samples = [
    RecipeModel(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
    ),
    RecipeModel(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
    ),
    RecipeModel(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpg',
    ),
    RecipeModel(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpg',
    ),
    RecipeModel(
      'Taco Salad',
      'assets/8533381643_a31a99e8a6_c.jpg',
    ),
    RecipeModel(
      'Hawaiian Pizza',
      'assets/15452035777_294cefced5_c.jpg',
    ),
  ];
}

// TODO: Add Ingredient() here

