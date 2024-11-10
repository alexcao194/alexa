import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sellar_e_commerce/models/address.dart';

part 'generated/shipment.freezed.dart';

part 'generated/shipment.g.dart';

@freezed
@HiveType(typeId: 8)
class Shipment with _$Shipment {
  const factory Shipment({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("Pending") String status,
    @HiveField(2) @Default('02/12/2024') String? shipmentDate,
    @HiveField(3) @Default('02/12/2024') String? estimatedShipmentDate,
    @HiveField(4) @Default(Address()) Address address,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, dynamic> json) => _$ShipmentFromJson(json);
}