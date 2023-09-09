class Category {
  final String title;
  final String imageUrl;

  Category({required this.title, required this.imageUrl});
}

List<Category> categories = [
  Category(
      title: 'Sneaker',
      imageUrl: 'lib/assets/pic/category/categoryIcon/sneakers.png'),
  Category(
      title: 'Sport-Clothes',
      imageUrl: 'lib/assets/pic/category/categoryIcon/sport-clothes.png'),
  Category(
      title: 'Shoes-football',
      imageUrl: 'lib/assets/pic/category/categoryIcon/footballicon.png'),

  // Add more categories here
];
