import 'package:flutter/material.dart';

class SidebarComponent extends StatelessWidget {
  final List<String> stockSymbols;

  const SidebarComponent({
    Key? key,
    this.stockSymbols = const [
      'MSFT', 'AAPL', 'NVDA', 'GOOG', 'AMZN', 'META', 'BRK.A', 
      'LLY', 'AVGO', 'TSLA', 'JPM', 'WMT', 'ABCD', 'OOPS'
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 90),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo and Header Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.network(
                  'https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/logo-cra.png',
                  width: 98,
                  height: 22,
                ),
                const Spacer(),
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    color: const Color(0xFFB38F3F),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: 'Exo',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Overview Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xFF5A5A5A), width: 2),
              ),
              child: Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 14),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Stock Symbols List
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: stockSymbols.map((symbol) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    symbol,
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
              )).toList(),
            ),
          ),

          // Bottom Navigation
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/group-2.png', 'Home'),
                _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/group-5.png', 'Products'),
                _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/group-1.png', 'Add Credit'),
                _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/group-4.png', 'History'),
                _buildNavItem('https://dashboard.codeparrot.ai/api/image/Z7RHCjO_YEiK210Z/group-3.png', 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Exo',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

