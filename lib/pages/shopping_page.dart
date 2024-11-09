import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/responsive_layout.dart';

import '../widgets/e_com_item_description.dart';
import '../widgets/e_com_items.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: ECommerceItems(),
        ),
        if (size.width >= ResponsiveLayout.iphoneLimit)
          Expanded(
            flex: 3,
            child: ECommerceItemDescription(),
          ),
      ],
    );
  }
}
