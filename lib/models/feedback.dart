import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sellar_e_commerce/models/customer.dart';
import 'package:sellar_e_commerce/models/item.dart';

part 'generated/feedback.freezed.dart';

part 'generated/feedback.g.dart';

@freezed
@HiveType(typeId: 10)
class Feedback with _$Feedback {
  const factory Feedback({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default(Customer()) Customer customer,
    @HiveField(2) @Default(Item()) Item item,
    @HiveField(3) @Default('Great!!') String comment,
    @HiveField(4) @Default(5) int rating,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) => _$FeedbackFromJson(json);
}