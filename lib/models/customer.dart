import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sellar_e_commerce/models/address.dart';
import 'package:sellar_e_commerce/models/credit_card.dart';

import 'cart.dart';

part 'generated/customer.freezed.dart';

part 'generated/customer.g.dart';

@freezed
@HiveType(typeId: 0)
class Customer with _$Customer {
  const factory Customer({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default('Cao Việt Đức') String name,
    @HiveField(2) @Default('alexcao194@gmail.com') String email,
    @HiveField(3) @Default('0339143776') String phone,
    @HiveField(4) @Default('https://lh3.googleusercontent.com/a/ACg8ocJIJAilBtdGus-qCdEEpOX-1f9CoFC4mj0wU_9kLnhYH_wUOSDY=s96-c') String photoUrl,
    @HiveField(5) @Default(true) bool gender,
    @HiveField(6) @Default(Address()) Address address,
    @HiveField(7) @Default(CreditCard()) CreditCard creditCard,
    @HiveField(8) @Default(Cart()) Cart cart,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}