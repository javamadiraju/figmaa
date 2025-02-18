import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'CreditInfoComponent.dart';
import 'UserStatusComponent.dart';
import 'TabNavigationComponent.dart';
import 'OrderHistoryTableComponent.dart';
import 'FooterNavigationComponent.dart';

class OrderHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/clip-pat.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HeaderComponent(userName: 'Harvey', notificationCount: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CreditInfoComponent(creditValue: 10),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              ),
            ),
            UserStatusComponent(status: 'Active', role: 'Global Agent'),
            TabNavigationComponent(isOrderHistorySelected: true),
            Expanded(
              child: OrderHistoryTableComponent(),
            ),
            FooterNavigationComponent(),
          ],
        ),
      ),
    );
  }
}
