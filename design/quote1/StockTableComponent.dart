import 'package:flutter/material.dart';

class StockTableComponent extends StatelessWidget {
  final List<StockData> stockData;

  StockTableComponent({
    Key? key,
    this.stockData = const [
      StockData('MSFT', '451.90 USD', '+1.11%', '5.521 M', '0.28', true),
      StockData('AAPL', '215.34 USD', '+2.24%', '21.252 M', '0.23', true),
      StockData('NVDA', '122.96 USD', '-0.47%', '4.92 M', '0.35', false),
      StockData('GOOG', '183.75 USD', '+0.18%', '16.137 M', '0.24', true),
      StockData('AMZN', '195.98 USD', '+1.41%', '4.742M', '0.31', true),
      StockData('META', '498.89 USD', '-1.06%', '1.346 K', '0.36', false),
      StockData('BRK.A', '608,712 USD', '-0.58%', '1.04 M', '0.64', false),
      StockData('LLY', '915.96 USD', '+1.17%', '1.904 M', '0.38', true),
      StockData('AVGO', '1,610 USD', '+0.33%', '62.898 M', '0.28', true),
      StockData('TSLA', '210.2 USD', '+6.22%', '3.268 M', '0.82', true),
      StockData('JPM', '204,74 USD', '+1.23%', '2.401 M', '0.32', true),
      StockData('WMT', '67,47 USD', '-0.35%', '1.395 M', '0.15', false),
      StockData('ABCD', '120,20 USD', '+1.12%', '2.302 M', '0.98', true),
      StockData('OOPS', '351,29 USD', '+1.50%', '1.450 M', '0.15', true),
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color(0xFF2E2E30),
      ),
      child: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: stockData.length,
              itemBuilder: (context, index) {
                return _buildStockRow(stockData[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 47, child: Text('Symbol', style: headerStyle)),
          Expanded(
            flex: 2,
            child: Text('Price', style: headerStyle, textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text('Change', style: headerStyle, textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text('Volume', style: headerStyle, textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 2,
            child: Text('Rel Volume', style: headerStyle, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }

  Widget _buildStockRow(StockData stock) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 47,
            height: 17,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Text(
              stock.symbol,
              style: TextStyle(
                fontFamily: 'Exo',
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              stock.price,
              style: valueStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              stock.change,
              style: valueStyle.copyWith(
                color: stock.isPositive ? Color(0xFF1DD617) : Color(0xFFFF0000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              stock.volume,
              style: valueStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              stock.relVolume,
              style: valueStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  final TextStyle headerStyle = TextStyle(
    fontFamily: 'Exo',
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: Colors.white,
  );

  final TextStyle valueStyle = TextStyle(
    fontFamily: 'Exo',
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: Colors.white,
  );
}

class StockData {
  final String symbol;
  final String price;
  final String change;
  final String volume;
  final String relVolume;
  final bool isPositive;

  StockData(
    this.symbol,
    this.price,
    this.change,
    this.volume,
    this.relVolume,
    this.isPositive,
  );
}

