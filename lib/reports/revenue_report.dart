import 'package:flutter/material.dart';

import '../orders/order.model.dart';

class RevenueReport extends StatelessWidget {
  final List<Order> orders;

  const RevenueReport({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Revenue Report',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
            Text(
              'Total Orders: ${orders.length}',
              style: TextStyle(fontSize: 16),
            ),
            // Add more revenue calculations here
          ],
        ),
      ),
    );
  }
}
