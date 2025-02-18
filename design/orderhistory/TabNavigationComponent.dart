import 'package:flutter/material.dart';

class TabNavigationComponent extends StatefulWidget {
  final bool isOrderHistorySelected;

  const TabNavigationComponent({
    Key? key,
    this.isOrderHistorySelected = true,
  }) : super(key: key);

  @override
  _TabNavigationComponentState createState() => _TabNavigationComponentState();
}

class _TabNavigationComponentState extends State<TabNavigationComponent> {
  late bool isOrderHistorySelected;

  @override
  void initState() {
    super.initState();
    isOrderHistorySelected = widget.isOrderHistorySelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth * 0.6;
          double tabWidth = containerWidth / 2;

          return Container(
            width: containerWidth,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  left: isOrderHistorySelected ? 0 : tabWidth,
                  child: Container(
                    width: tabWidth,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isOrderHistorySelected = true;
                        });
                      },
                      child: Container(
                        width: tabWidth,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Order History',
                          style: TextStyle(
                            color: isOrderHistorySelected
                                ? const Color(0xFFB38F3F)
                                : const Color(0xFFA8A7A5),
                            fontFamily: 'Exo',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isOrderHistorySelected = false;
                        });
                      },
                      child: Container(
                        width: tabWidth,
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Credit History',
                          style: TextStyle(
                            color: !isOrderHistorySelected
                                ? const Color(0xFFB38F3F)
                                : const Color(0xFFA8A7A5),
                            fontFamily: 'Exo',
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

