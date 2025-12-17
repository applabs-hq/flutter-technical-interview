import 'package:flutter/material.dart';

import 'reports_page.viewmodel.dart';
import 'revenue_report.dart';
import 'sales_report.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({super.key});

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  late final ReportsPageViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ReportsPageViewModel();
    _viewModel.addListener(_onViewModelChanged);
    _viewModel.fetchOrders();
  }

  @override
  void dispose() {
    _viewModel.removeListener(_onViewModelChanged);
    _viewModel.dispose();
    super.dispose();
  }

  void _onViewModelChanged() {
    setState(() {
      print('onViewModelChanged');
      print(_viewModel.orders);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reports Pages',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: Row(
        children: [
          Flexible(child: RevenueReport(orders: _viewModel.orders)),
          const SizedBox(width: 16),
          Flexible(child: SalesReport(orders: _viewModel.orders)),
        ],
      ),
    );
  }
}
