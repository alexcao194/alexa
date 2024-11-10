import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sellar_e_commerce/models/cart_item.dart';
import 'package:sellar_e_commerce/models/customer.dart';
import 'package:sellar_e_commerce/models/shipment.dart';

part 'generated/order.freezed.dart';

part 'generated/order.g.dart';

@freezed
@HiveType(typeId: 9)
class Order with _$Order {
  const factory Order({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default(CartItem()) CartItem cartItems,
    @HiveField(2) @Default(Shipment()) Shipment shipment,
    @HiveField(3) @Default('01/02/2024') String orderDate,
    @HiveField(4) @Default(Customer()) Customer customer,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}