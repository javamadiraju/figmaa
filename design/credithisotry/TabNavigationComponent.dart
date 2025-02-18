import 'package:flutter/material.dart';

class TabNavigationComponent extends StatelessWidget {
  final Function(int)? onTabChanged;
  final int selectedIndex;

  const TabNavigationComponent({
    Key? key,
    this.onTabChanged,
    this.selectedIndex = 1, // Default to Credit History selected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minWidth: 233),
      height: 40, // Increased height for better touch target
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        children: [
          // Selected tab indicator
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: selectedIndex == 0 ? 0 : MediaQuery.of(context).size.width / 2 - 61,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          // Tab buttons
          Row(
            children: [
              _buildTab(
                "Class History",
                0,
                const Color(0xFFA8A7A5),
              ),
              _buildTab(
                "Credit History",
                1,
                const Color(0xFFB38F3F),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String text, int index, Color textColor) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTabChanged?.call(index),
        child: Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontFamily: 'Exo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

