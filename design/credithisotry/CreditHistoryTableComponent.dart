import 'package:flutter/material.dart';

class CreditHistoryTableComponent extends StatelessWidget {
  final List<CreditHistoryItem> historyItems;

  CreditHistoryTableComponent({
    Key? key,
    this.historyItems = const [
      CreditHistoryItem(
        transactionId: '1309478',
        date: '01/01/2025',
        strategy: 'Whale Investor',
        credits: -1,
      ),
      CreditHistoryItem(
        transactionId: '1057689',
        date: '01/01/2025',
        strategy: 'REIT Investing Score',
        credits: -1,
      ),
      CreditHistoryItem(
        transactionId: '1057689',
        date: '01/01/2025',
        strategy: 'Bonus Credit: New User',
        credits: 2,
      ),
      CreditHistoryItem(
        transactionId: '1057689',
        date: '01/01/2025',
        strategy: 'Top-up Credits',
        credits: 10,
      ),
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 400,
        maxHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: historyItems.map((item) => _buildTableRow(item)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        children: [
          _headerCell('TRANSACTION\nID', flex: 2),
          _headerCell('DATE TOP-UP', flex: 2),
          _headerCell('STRATEGIES', flex: 3),
          _headerCell('CREDITS', flex: 1),
        ],
      ),
    );
  }

  Widget _headerCell(String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Exo',
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildTableRow(CreditHistoryItem item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          _rowCell(item.transactionId, flex: 2),
          _rowCell(item.date, flex: 2),
          _rowCell(item.strategy, flex: 3),
          _rowCell(
            item.credits > 0 ? '+${item.credits}' : item.credits.toString(),
            flex: 1,
            color: item.credits > 0 ? Color(0xFF1DD617) : Color(0xFFD92009),
          ),
        ],
      ),
    );
  }

  Widget _rowCell(String text, {required int flex, Color? color}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Exo',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color ?? Color(0xFFB38F3F),
        ),
      ),
    );
  }
}

class CreditHistoryItem {
  final String transactionId;
  final String date;
  final String strategy;
  final int credits;

  CreditHistoryItem({
    required this.transactionId,
    required this.date,
    required this.strategy,
    required this.credits,
  });
}

