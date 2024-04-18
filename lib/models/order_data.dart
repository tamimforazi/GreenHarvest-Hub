import 'package:green_harvest_hub/models/order_model.dart';
import 'package:green_harvest_hub/models/product_data.dart';

List<Order> orders = [
  Order(
    id: "202304a5",
    products: products.reversed.take(3).toList(),
    date: DateTime.utc(2023),
  ),
  Order(
    id: "202204jm",
    products: products.take(1).toList(),
    date: DateTime.utc(2022),
  ),
  Order(
    id: "201904vc",
    products: products.reversed.skip(2).toList(),
    date: DateTime.utc(2019),
  ),
];
