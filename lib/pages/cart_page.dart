import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/widgets/rounded_button.dart';

import '../generared/assets.dart';
import '../widgets/filled_field.dart';

class CartPage extends StatelessWidget {
  // Sample data for cart items
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Sản phẩm A', 'price': 100000, 'quantity': 2},
    {'name': 'Sản phẩm B', 'price': 150000, 'quantity': 1},
    {'name': 'Sản phẩm C', 'price': 80000, 'quantity': 3},
  ];

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Cart Items List
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return _buildCartItem(item);
              },
            ),
          ),
          const Divider(height: 32, thickness: 1),
          const SizedBox(height: 20),
          Text(
            "Billing Information",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    FilledField(
                      label: "Full Name",
                      hint: "Cao Viet Duc",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "Card Number",
                      hint: "1234 5678 9101 1121",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "Card Holder",
                      hint: "Cao Viet Duc",
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    FilledField(
                      label: "Phone",
                      hint: "0123456789",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "Expiration Date",
                      hint: "12/21",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "CVV",
                      hint: "123",
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    FilledField(
                      label: "Country",
                      hint: "Vietnam",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "Province",
                      hint: "Hanoi",
                    ),
                    SizedBox(height: 20),
                    FilledField(
                      label: "Address",
                      hint: "Cau Giay",
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          _buildTotalSection(),
        ],
      ),
    );
  }

  // Widget to display individual cart items
  Widget _buildCartItem(Map<String, dynamic> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              Assets.pngAlexa,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${item['price']}',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          // Quantity Selector
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () {
                  // Logic giảm số lượng
                },
              ),
              Text(
                '${item['quantity']}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(Icons.add_circle_outline),
                onPressed: () {
                  // Logic tăng số lượng
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget to display total price and checkout button
  Widget _buildTotalSection() {
    final totalPrice = cartItems.fold(
      0,
      (sum, item) => sum + (item['price'] * item['quantity']) as int,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Total:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$$totalPrice',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 16),
        RoundedButton(child: Text('Thanh toán'), onPressed: () {}),
      ],
    );
  }
}
