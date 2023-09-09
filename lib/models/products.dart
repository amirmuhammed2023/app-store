class productmodel {
  String title, image, description, category;
  int Price;
  int id;
  rating rates;

  productmodel(
      {required this.title,
      required this.image,
      required this.description,
      required this.category,
      required this.Price,
      required this.id,
      required this.rates});

  factory productmodel.fromjson(jsondata) {
    return productmodel(
      title: jsondata["title"],
      image: jsondata["image"],
      description: jsondata["description"],
      category: jsondata["category"],
      Price: jsondata["price"] as int,
      id: jsondata["id"],
      rates: rating.fromjson(jsondata["rating"]),
    );
  }
}

class rating {
  double rate;
  int count;

  rating({required this.rate, required this.count});

  factory rating.fromjson(jsondata) {
    return rating(
      rate: jsondata["rate"],
      count: jsondata["count"],
      );
  }
}
