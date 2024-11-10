import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  // Sample data for cart items
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'Sản phẩm A', 'price': 100000, 'quantity': 2},
    {'name': 'Sản phẩm B', 'price': 150000, 'quantity': 1},
    {'name': 'Sản phẩm C', 'price': 80000, 'quantity': 3},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Giỏ hàng của bạn',
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

          // Total Price and Checkout Button
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Product Name and Price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['name'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                '${item['price']} VND',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
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
              'Tổng cộng:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '$totalPrice VND',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Logic thanh toán
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Thanh toán'),
        ),
      ],
    );
  }
}
