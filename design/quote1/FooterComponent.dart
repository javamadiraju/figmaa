import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildNavItem('Home', 'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-2.png', 36.44, 31.65),
          _buildNavItem('Products', 'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-5.png', 33, 32.83),
          _buildNavItem('Add Credit', 'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-1.png', 54, 54),
          _buildNavItem('History', 'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-4.png', 36.97, 35.76),
          _buildNavItem('Profile', 'https://dashboard.codeparrot.ai/api/image/Z7RJU6WN819FoZlS/group-3.png', 27, 34),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, String iconPath, double width, double height) {
    return InkWell(
      onTap: () {
        // Handle navigation
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            iconPath,
            width: width,
            height: height,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Exo',
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

