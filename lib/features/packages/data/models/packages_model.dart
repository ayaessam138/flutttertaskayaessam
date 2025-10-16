class PackageModel {
  final int? id;
  final String? name;
  final double? price;
  final String? duration;
  final String? features;
  final String? place;
  final String? perium;
  final String? stabilizing;
  final String? stabilizingDuration;
  final String? views;

  PackageModel({
    this.id,
    this.name,
    this.price,
    this.duration,
    this.features,
    this.place,
    this.perium,
    this.stabilizing,
    this.stabilizingDuration,
    this.views,
  });

  factory PackageModel.fromMap(Map<String, dynamic> map) {
    return PackageModel(
      id: map['id'],
      name: map['name'],
      price: map['price']?.toDouble(),
      duration: map['duration'],
      features: map['features'],
      place: map['place'],
      perium: map['perium'],
      stabilizing: map['stabilizing'],
      stabilizingDuration: map['stabilizing_duration'],
      views: map['views'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'duration': duration,
      'features': features,
      'place': place,
      'perium': perium,
      'stabilizing': stabilizing,
      'stabilizing_duration': stabilizingDuration,
      'views': views,
    };
  }
}
