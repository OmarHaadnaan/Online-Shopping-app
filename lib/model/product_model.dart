class Cloth {
  final String image;
  final String clothName;
  final double price;
  final String description;

  Cloth({
    required this.image,
    required this.clothName,
    required this.price,
    required this.description,
  });
}

List<Cloth> cloths = [
  Cloth(
    image: "images/i1.jfif",
    clothName: "Casual T-shirt",
    price: 15.99,
    description: "A comfortable and stylish casual t-shirt for everyday wear.",
  ),
  Cloth(
    image: "images/i2.jfif",
    clothName: "Denim Jeans",
    price: 39.99,
    description:
        "Classic denim jeans with a modern fit, perfect for all occasions.",
  ),
  Cloth(
    image: "images/i3.jfif",
    clothName: "Leather Jacket",
    price: 89.99,
    description: "A stylish and durable leather jacket for a sleek look.",
  ),
  Cloth(
    image: "images/i4.jfif",
    clothName: "Sports Hoodie",
    price: 25.50,
    description: "A sporty hoodie perfect for workouts and casual outings.",
  ),
];
