class Orders {
  String? id;
  int? quantity;
  double? price;
  double? total;
  bool? cashOnDelivery;
  bool? payByCard;

  Orders(OrdersBuilder builder):
      id = builder.id,
      quantity = builder.quantity,
      price = builder.price,
      total = builder.total,
      cashOnDelivery = builder.cashOnDelivery,
      payByCard = builder.payByCard;
}

class OrdersBuilder {
  String? id;
  int? quantity;
  double? price;
  double? total;
  bool? cashOnDelivery;
  bool? payByCard;
}