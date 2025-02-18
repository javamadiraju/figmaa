import 'package:flutter/material.dart';

class FooterNavigationComponent extends StatelessWidget {
  const FooterNavigationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem('Home', 'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/group-2.png'),
          _buildNavItem('Products', 'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/group-5.png'),
          _buildNavItem('Add Credit', 'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/group-1.png'),
          _buildNavItem('History', 'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/group-4.png'),
          _buildNavItem('Profile', 'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/group-3.png'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, String iconUrl) {
    return InkWell(
      onTap: () {
        // Handle navigation
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            iconUrl,
            width: 36,
            height: 36,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Exo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

