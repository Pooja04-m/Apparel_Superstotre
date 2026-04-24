class Product {
  final String id;
  final String name;
  final String brand;
  final String description;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final String category;
  final List<String> sizes;
  final List<String> colors;
  final double rating;
  final int reviewCount;
  final bool isNew;
  final bool isFeatured;

  const Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    required this.category,
    required this.sizes,
    required this.colors,
    required this.rating,
    required this.reviewCount,
    this.isNew = false,
    this.isFeatured = false,
  });

  int get discountPercentage {
    if (originalPrice == null) return 0;
    return (((originalPrice! - price) / originalPrice!) * 100).round();
  }
}
