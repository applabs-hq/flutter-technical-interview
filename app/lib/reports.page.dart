import 'package:flutter/material.dart';

import 'revenue_report.dart';
import 'sales_report.dart';

final class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reports Page',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: const Row(
          children: [
            Flexible(child: RevenueReport()),
            SizedBox(width: 16),
            Flexible(child: SalesReport()),
          ],
        ),
      ),
    );
  }
}
