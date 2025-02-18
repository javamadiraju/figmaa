import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'CreditInfoComponent.dart';
import 'UserStatusComponent.dart';
import 'TabNavigationComponent.dart';
import 'CreditHistoryTableComponent.dart';
import 'FooterNavigationComponent.dart';

class CreditHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://dashboard.codeparrot.ai/api/image/Z7RHt6WN819FoZlP/clip-pat.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            HeaderComponent(),
            CreditInfoComponent(),
            UserStatusComponent(),
            TabNavigationComponent(),
            Expanded(
              child: CreditHistoryTableComponent(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FooterNavigationComponent(),
    );
  }
}
