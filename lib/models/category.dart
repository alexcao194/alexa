import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'generated/category.freezed.dart';

part 'generated/category.g.dart';

@freezed
@HiveType(typeId: 3)
class Category with _$Category {
  const factory Category({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("Electronic") String name,
    @HiveField(2) @Default("Electronic description") String description,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
