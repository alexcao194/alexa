import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'generated/cart_item.freezed.dart';

part 'generated/cart_item.g.dart';

@freezed
@HiveType(typeId: 5)
class CartItem with _$CartItem {
  const factory CartItem({
    @HiveField(0) @Default(0) int itemId,
    @HiveField(1) @Default(2) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}
