import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'generated/credit_card.freezed.dart';

part 'generated/credit_card.g.dart';

@freezed
@HiveType(typeId: 2)
class CreditCard with _$CreditCard {
  const factory CreditCard({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("2804 2050 5799 7203") String cardNumber,
    @HiveField(2) @Default("Cao Viet Duc") String cardHolderName,
    @HiveField(3) @Default("02/27") String expirationDate,
    @HiveField(4) @Default("132") String cvv,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) => _$CreditCardFromJson(json);
}