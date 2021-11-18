class UnboardingContent {
  String name;
  String image;
  String title;
  String discription;

  UnboardingContent(
      {required this.name,
      required this.image,
      required this.title,
      required this.discription});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      name: 'Kcal',
      title: 'Eat Healthy',
      image: 'images/eating.png',
      discription:
          "Maintaining good health should be the primary focus of everyone."),
  UnboardingContent(
      name: 'Kcal',
      title: 'Healthy Recipes',
      image: 'images/recipes.png',
      discription:
          "Browse thousands of healthy recipes from all over the world."),
  UnboardingContent(
      name: 'Kcal',
      title: 'Track Your Health',
      image: 'images/health.png',
      discription: "With amazing inbuilt tools you can track your progress."),
];
