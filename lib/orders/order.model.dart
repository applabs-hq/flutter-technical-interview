class Order {
  final String id;
  final DateTime createdAtUTC;
  final List<OrderLine> lines;
  final String currencyCode;

  const Order({
    required this.id,
    required this.createdAtUTC,
    required this.lines,
    required this.currencyCode,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'] as String,
      createdAtUTC: DateTime.parse(json['createdAtUTC'] as String),
      lines:
          (json['lines'] as List<dynamic>)
              .map((line) => OrderLine.fromJson(line as Map<String, dynamic>))
              .toList(),
      currencyCode: json['currencyCode'] as String,
    );
  }

  @override
  String toString() {
    return 'Order(id: $id, createdAtUTC: $createdAtUTC, lines: $lines, currencyCode: $currencyCode)';
  }

  Order copyWith({
    String? id,
    DateTime? createdAtUTC,
    List<OrderLine>? lines,
    String? currencyCode,
  }) {
    return Order(
      id: id ?? this.id,
      createdAtUTC: createdAtUTC ?? this.createdAtUTC,
      lines: lines ?? this.lines,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }
}

class OrderLine {
  final String id;
  final int quantity;
  final Product product;
  final double discount;

  const OrderLine({
    required this.id,
    required this.quantity,
    required this.product,
    required this.discount,
  });

  factory OrderLine.fromJson(Map<String, dynamic> json) {
    return OrderLine(
      id: json['id'] as String,
      quantity: json['quantity'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      discount: (json['discount'] as num).toDouble(),
    );
  }

  @override
  String toString() {
    return 'OrderLine(id: $id, quantity: $quantity, product: $product, discount: $discount)';
  }

  OrderLine copyWith({int? quantity, Product? product, double? discount}) {
    return OrderLine(
      id: id,
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
      discount: discount ?? this.discount,
    );
  }
}

class Product {
  final String id;
  final double tax;
  final double price;

  const Product({required this.id, required this.tax, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      tax: (json['tax'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, tax: $tax, price: $price)';
  }

  Product copyWith({double? tax, double? price}) {
    return Product(id: id, tax: tax ?? this.tax, price: price ?? this.price);
  }
}
