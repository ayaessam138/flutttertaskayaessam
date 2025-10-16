class CategoryModel {
  final int? id;
  final String? name;
  final String? icon;

  CategoryModel({
    this.id,
    this.name,
    this.icon,
  });


  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'],
      name: map['name'],
      icon: map['icon'],
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
    };
  }
}
