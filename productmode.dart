// To parse this JSON data, do
//
//     final productmodel = productmodelFromJson(jsonString);

import 'dart:convert';

List<Productmodel> productmodelFromJson(String str) => List<Productmodel>.from(
    json.decode(str).map((x) => Productmodel.fromJson(x)));

String productmodelToJson(List<Productmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Productmodel {
  String? image;
  String? name;
  int? price;

  Productmodel({
    this.image,
    this.name,
    this.price,
  });

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        image: json["image"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "price": price,
      };
}

List<Productmodel> productList = [
  {
    "image": "https://m.media-amazon.com/images/I/71KkjR4WJyL.UX522.jpg",
    "name": "vjf",
    "price": 4445,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/719orzzm5rL.AC_UL480_FMwebp_QL65.jpg",
    "name": "vjf",
    "price": 4445,
  },
  {
    "image":
        "https://m.media-amazon.com/images/I/710D0XORbhL.AC_UL480_FMwebp_QL65.jpg",
    "name": "vjfjkkkkkkkkkkkk",
    "price": 4445,
  },
].map((x) => Productmodel.fromJson(x)).toList();

List<Productmodel> productDemoList = [
  Productmodel(
      name: "https://m.media-amazon.com/images/I/71KkjR4WJyL.UX522.jpg",
      image: "vjf",
      price: 4445),
  Productmodel(
      name: "https://m.media-amazon.com/images/I/71KkjR4WJyL.UX522.jpg",
      image: "vjf",
      price: 4445),
  Productmodel(
      name: "https://m.media-amazon.com/images/I/71KkjR4WJyL.UX522.jpg",
      image: "vjf",
      price: 4445),
];
