class Item {
  final String id;
  final String name;
  final String category;
  final int quantity;
  final double price;

  const Item({
    required this.id,
    required this.name,
    required this.category,
    required this.quantity,
    required this.price,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'category': category,
        'quantity': quantity,
        'price': price,
      };

  factory Item.fromMap(String id, Map<String, dynamic> map) => Item(
        id: id,
        name: map['name'] as String? ?? '',
        category: map['category'] as String? ?? 'General',
        quantity: (map['quantity'] as num?)?.toInt() ?? 0,
        price: (map['price'] as num?)?.toDouble() ?? 0.0,
      );

  bool get isLowStock => quantity > 0 && quantity <= 5;
  bool get isOutOfStock => quantity == 0;
}
