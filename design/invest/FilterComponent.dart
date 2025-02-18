import 'package:flutter/material.dart';

class FilterComponent extends StatefulWidget {
  const FilterComponent({Key? key}) : super(key: key);

  @override
  _FilterComponentState createState() => _FilterComponentState();
}

class _FilterComponentState extends State<FilterComponent> {
  double priceValue = 100000;
  double changeRateValue = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      constraints: BoxConstraints(minWidth: 300),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Handle close
                  },
                  child: Text(
                    'x',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Market',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildMarketChip('US Market', isSelected: true),
                _buildMarketChip('Japan Market'),
                _buildMarketChip('Rusia Market'),
                _buildMarketChip('SG Market'),
                _buildMarketChip('AUS Market'),
                _buildMarketChip('Korea Market'),
                _buildDropdownChip('Others'),
              ],
            ),
            _buildDivider(),
            Text(
              'Index',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildMarketChip('S&P 500'),
                _buildMarketChip('DJIA'),
                _buildMarketChip('NASDAQ'),
                _buildMarketChip('MSCI'),
                _buildMarketChip('FTSE'),
                _buildMarketChip('RUSSEL 2000'),
                _buildDropdownChip('Others'),
              ],
            ),
            _buildDivider(),
            Text(
              'Price (USD)',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0'),
                Text('1 M'),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Color(0xFFB38F3F),
                inactiveTrackColor: Color(0xFFD9D9D9),
                thumbColor: Color(0xFFB38F3F),
              ),
              child: Slider(
                value: priceValue,
                min: 0,
                max: 1000000,
                onChanged: (value) {
                  setState(() {
                    priceValue = value;
                  });
                },
              ),
            ),
            _buildDivider(),
            Text(
              'Change Rate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('-100%'),
                Text('+100%'),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Color(0xFFB38F3F),
                inactiveTrackColor: Color(0xFFD9D9D9),
                thumbColor: Color(0xFFB38F3F),
              ),
              child: Slider(
                value: changeRateValue,
                min: -100,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    changeRateValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Handle filter apply
                },
                child: Text(
                  'APPLY THIS FILTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFB38F3F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarketChip(String label, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFB38F3F) : Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDropdownChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Color(0xFFB38F3F),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Divider(
        color: Color(0xFFD9D9D9),
        thickness: 1,
      ),
    );
  }
}

