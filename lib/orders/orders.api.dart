import 'dart:convert';

import 'order.model.dart';
import 'package:http/http.dart' as http;

abstract class OrdersApi {
  static Future<List<Order>> getOrders() async {
    try {
      final uri = Uri.parse(
        'https://interview-demo-api.azurewebsites.net/orders',
      );
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List<dynamic>;
        return json
            .map<Order>(
              (order) => Order.fromJson(order as Map<String, dynamic>),
            )
            .toList();
      } else {
        throw Exception('Failed to load orders');
      }
    } catch (e) {
      throw Exception('Failed to load orders: $e');
    }
  }
}
