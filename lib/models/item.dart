import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../generared/assets.dart';
import 'category.dart';

part 'generated/item.freezed.dart';

part 'generated/item.g.dart';

@freezed
@HiveType(typeId: 4)
class Item with _$Item {
  const factory Item({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("PS5 Controller") String name,
    @HiveField(2) @Default("PS5 Controller description") String description,
    @HiveField(3) @Default(75) int amount,
    @HiveField(4) @Default(Assets.pngPs5) String image,
    @HiveField(5) @Default(Category()) Category category,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}


