import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'cart_item.dart';

part 'generated/cart.freezed.dart';

part 'generated/cart.g.dart';

@freezed
@HiveType(typeId: 6)
class Cart with _$Cart {
  const factory Cart({
    @HiveField(0) @Default([]) List<CartItem> items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}