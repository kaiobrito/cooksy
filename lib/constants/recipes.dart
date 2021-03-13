class Recipe {
  String title, description;
  int serving, timeInMinutes;

  Recipe(this.title, this.description, { this.serving = 1, this.timeInMinutes = 30});
}

final List<Recipe> recipes = [
  Recipe("Veggie breakfast", "Healthy food for busy people", timeInMinutes: 5),
  Recipe("Italian pasta", "Tasty traditional dish. Not only for Italian who went to Malta", timeInMinutes: 45, serving: 4),
  Recipe("Cheese’n’Meat", "Let’s pray only for Cheesus!", timeInMinutes: 3, serving: 2),
  Recipe("Pumpkin Soup", "Feel the spiciness and  season vegetables", timeInMinutes: 50, serving: 4),
  Recipe("Asian inspired pasta", "Missing pad-thai and living in Italy? Check this out", timeInMinutes: 45, serving: 4),
  Recipe("Croatian wedding", "Some tasty things", timeInMinutes: 90, serving: 4),
  Recipe("Vegan party set", "Alternative food proposition for weekend party", timeInMinutes: 45, serving: 4),
];
