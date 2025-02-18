import 'package:flutter/material.dart';

class OrderHistoryTableComponent extends StatelessWidget {
  const OrderHistoryTableComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 400, // Minimum width to ensure content fits
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    'ORDERID',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Text(
                    'DATE PURCHASE',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'STRATEGIES',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Text(
                    'CREDITS',
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          // Data Rows
          _buildOrderRow('AB4528', '01/01/2025', 'Whale Investor', -1),
          _buildOrderRow('AB4529', '01/01/2025', 'REIT Investing Score', -1),
        ],
      ),
    );
  }

  Widget _buildOrderRow(String orderId, String date, String strategy, int credits) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              orderId,
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFB38F3F),
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: Text(
              date,
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFB38F3F),
              ),
            ),
          ),
          Expanded(
            child: Text(
              strategy,
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFB38F3F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: 80,
            child: Text(
              credits.toString(),
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFD92009),
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

