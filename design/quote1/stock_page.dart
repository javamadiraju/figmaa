import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'StockTableComponent.dart';
import 'FooterComponent.dart';

class StockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: HeaderComponent(),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: StockTableComponent(),
            ),
          ),
          Container(
            width: double.infinity,
            child: FooterComponent(),
          ),
        ],
      ),
    );
  }
}

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF5A5A5A), width: 2),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/logo-cra.png', width: 98, height: 22),
          Text('Overview', style: TextStyle(fontFamily: 'Exo', fontWeight: FontWeight.bold, fontSize: 16)),
          Icon(Icons.notifications, color: Colors.black),
        ],
      ),
    );
  }
}

class StockTableComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2E2E30),
      ),
      child: ListView(
        children: [
          // Add stock rows here
        ],
      ),
    );
  }
}

class FooterComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-2.png', width: 36.44, height: 31.65),
              Text('Home', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-5.png', width: 33, height: 32.83),
              Text('Products', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-1.png', width: 54, height: 54),
              Text('Add Credit', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-4.png', width: 36.97, height: 35.76),
              Text('History', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            children: [
              Image.network('https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-3.png', width: 27, height: 34),
              Text('Profile', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

