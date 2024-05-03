import 'dart:convert';

Products productsFromMap(String str) => Products.fromMap(json.decode(str));

String productsToMap(Products data) => json.encode(data.toMap());

class Products {
    final int id;
    final String title;
    final double price;
    final String description;
    final String category;
    final String image;
   

    Products({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.category,
        required this.image,
       
    });

    Products copyWith({
        int? id,
        String? title,
        double? price,
        String? description,
        String? category,
        String? image,
        
    }) => 
        Products(
            id: id ?? this.id,
            title: title ?? this.title,
            price: price ?? this.price,
            description: description ?? this.description,
            category: category ?? this.category,
            image: image ?? this.image,
           
        );

    factory Products.fromMap(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
       
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        
    };
}