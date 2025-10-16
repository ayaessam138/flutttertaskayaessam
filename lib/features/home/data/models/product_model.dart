class ProductModel {
  final int? id;
  final String? title;
  final double? price;
  final double? oldPrice;
  final String? image;
  final int? categoryId;
  final int? isFavorite;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.oldPrice,
    this.image,
    this.categoryId,
    this.isFavorite = 0,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      title: map['title'],
      price: map['price']?.toDouble(),
      oldPrice: map['old_price']?.toDouble(),
      image: map['image'],
      categoryId: map['category_id'],
      isFavorite: map['is_favorite'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'old_price': oldPrice,
      'image': image,
      'category_id': categoryId,
      'is_favorite': isFavorite,
    };
  }
}
