import 'package:flutter/material.dart';
import 'FilterComponent.dart';
import 'SidebarComponent.dart';

class StockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar Component
          Expanded(
            flex: 1,
            child: SidebarComponent(),
          ),
          // Filter Component
          Container(
            width: 317,
            child: FilterComponent(),
          ),
        ],
      ),
    );
  }
}
