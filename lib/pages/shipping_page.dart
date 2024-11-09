import 'package:flutter/material.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  late VietmapController _mapController;

  @override
  Widget build(BuildContext context) {
    return VietmapGL(
      styleString:
      'https://maps.vietmap.vn/api/maps/light/styles.json?apikey=YOUR_API_KEY_HERE',
      initialCameraPosition:
      CameraPosition(target: LatLng(10.762317, 106.654551)),
      onMapCreated: (VietmapController controller) {
        setState(() {
          _mapController = controller;
        });
      },
    );
  }
}
