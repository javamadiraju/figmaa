import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Image.network(
            'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/logo-cra.png',
            width: 98,
            height: 21.66,
            fit: BoxFit.contain,
          ),
          
          // Overview Dropdown
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFF5A5A5A), width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const Text(
                  'Overview',
                  style: TextStyle(
                    fontFamily: 'Exo',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_drop_down,
                  color: const Color(0xFFB38F3F),
                  size: 14,
                ),
              ],
            ),
          ),
          
          // Notification Stack
          Stack(
            children: [
              const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 22,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: const BoxDecoration(
                    color: Color(0xFFB38F3F),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
