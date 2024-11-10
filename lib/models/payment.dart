import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sellar_e_commerce/models/credit_card.dart';

part 'generated/payment.freezed.dart';

part 'generated/payment.g.dart';

@freezed
@HiveType(typeId: 7)
class Payment with _$Payment {
  const factory Payment({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("Pending") String status,
    @HiveField(2) @Default(CreditCard()) CreditCard creditCard,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}