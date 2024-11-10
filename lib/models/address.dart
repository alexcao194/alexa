import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'generated/address.freezed.dart';

part 'generated/address.g.dart';

@freezed
@HiveType(typeId: 1)
class Address with _$Address {
  const factory Address({
    @HiveField(0) @Default('Viet Nam') String country,
    @HiveField(1) @Default('Ha Noi') String province,
    @HiveField(2) @Default('64A Yen Phuc - Ha Dong') String address,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}