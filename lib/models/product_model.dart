class ProductModel {
   final int id;
  final String image;
  final String title;
  final String price;
  final String? discount;
  final double rating;


ProductModel({
  required this.id,
  required this.image,
  required this.title,
  required this.price,
  this.discount,
  required this.rating,
});
}