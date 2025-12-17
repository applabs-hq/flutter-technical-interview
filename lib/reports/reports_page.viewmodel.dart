import 'package:flutter/foundation.dart';

import '../orders/orders.api.dart';
import '../orders/order.model.dart';

class ReportsPageViewModel extends ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders => _orders;

  Future<void> fetchOrders() async {
    try {
      final fetchedOrders = await OrdersApi.getOrders();
      _orders = fetchedOrders;
      print('Fetched orders: ${_orders.length}');
    } catch (e) {
      print('Error fetching orders: $e');
      _orders = [];
    } finally {
      notifyListeners();
    }
  }

  void refresh() {
    fetchOrders();
  }
}
