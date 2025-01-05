class ProductModel {
  final int id;
  final String title;
  final double price;
  final String desc;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.desc,
      required this.category,
      required this.rating,
      required this.image});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"],
        desc: jsonData["description"],
        category: jsonData["category"],
        image: jsonData["image"],
        rating: RatingModel.fromJson(jsonData["rating"]));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData["rate"],
      count: jsonData["count"],
    );
  }
}
