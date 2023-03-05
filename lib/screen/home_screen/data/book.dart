class Book {
  int? id;
  String? nameBook;
  String? publichDate;
  double? price;
  String? image;
  Book({this.id, this.nameBook, this.publichDate, this.price, this.image});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameBook = json['nameBook'];
    publichDate = json['publichDate'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id ?? 0;
    json['nameBook'] = nameBook;
    json['publichDate'] = publichDate;
    json['price'] = price;
    json['image'] = image;
    return json;
  }
}
