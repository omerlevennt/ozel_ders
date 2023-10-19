final class ProductModel {
  ProductModel({
    required this.name,
    required this.lessonName,
    required this.description,
    required this.price,
    required this.rank,
    required this.returnTime,
    required this.experience,
    required this.location,
    required this.commit,
  });

  final String name;
  final String lessonName;
  final String description;
  final double price;
  final double rank;
  final double returnTime;
  final int experience;
  final String location;
  final int commit;

  static List<ProductModel> productModels = [
    ProductModel(
      name: 'Ozlem Y',
      lessonName: 'İngilizce',
      description: 'Native English speakesr with over 10 years experience.',
      price: 100,
      rank: 4.6,
      returnTime: 1,
      experience: 10,
      location: 'Atasehir/Istabul',
      commit: 123,
    ),
    ProductModel(
      name: 'Product 2',
      lessonName: 'Lesson 2',
      description: 'This is the second product.',
      price: 200,
      rank: 4,
      returnTime: 2,
      experience: 20,
      location: 'Location 2',
      commit: 123,
    ),
    ProductModel(
      name: 'Product 3',
      lessonName: 'Lesson 3',
      description: 'This is the third product.',
      price: 300,
      rank: 3,
      returnTime: 3,
      experience: 30,
      location: 'Location 3',
      commit: 123,
    ),
    ProductModel(
      name: 'Product 4',
      lessonName: 'Lesson 4',
      description: 'This is the fourth product.',
      price: 400,
      rank: 2,
      returnTime: 4,
      experience: 40,
      location: 'Location 4',
      commit: 123,
    ),
    ProductModel(
      name: 'Product 5',
      lessonName: 'Lesson 5',
      description: 'This is the fifth product.',
      price: 500,
      rank: 1,
      returnTime: 5,
      experience: 50,
      location: 'Location 5',
      commit: 123,
    ),
  ];
}
