class Flower {
  String? createdAt;
  String? name;
  String? imageUrl;
  String? note;
  int? price;
  String? id;

  Flower(
      {this.createdAt,
      this.name,
      this.imageUrl,
      this.note,
      this.price,
      this.id});

  Flower.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    note = json['note'];
    price = json['price'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['name'] = name;
    data['imageUrl'] = imageUrl;
    data['note'] = note;
    data['price'] = price;
    data['id'] = id;
    return data;
  }
}
