import 'package:scoped_model/scoped_model.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;
  Product(this.name, this.description, this.price, this.image, this.rating);
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
      json['rating'],
    );
  }

  void updateRating(int myRating) {
    rating = myRating;
    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(Product(
        "Apple", "Apple is the most common fruit ever", 4, "apple.jpg", 0));
    items.add(Product("Banana", "Banana is the most famous yellowish fruits", 7,
        "banana.jpg", 0));
    items.add(Product(
        "Cucumber", "Cucumber is great for your health", 6, "cucumber.jpg", 0));
    items.add(Product(
        "Carrot", "The color is so great and ayecatching", 5, "carrot.jpg", 0));
    items.add(Product(
        "Tomato", "Tomato is great for pasta sauce", 7, "tomato.jpg", 0));
    return items;
  }
}
