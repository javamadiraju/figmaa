import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 320),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFBE5E00), Color(0xFFB38F3F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo section
          Image.network(
            'https://dashboard.codeparrot.ai/api/image/Z7RHt6WN819FoZlP/logo-cra.png',
            width: 98,
            height: 21.66,
            fit: BoxFit.contain,
          ),
          
          // Middle section with greeting
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xFFBE5E00),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    'H',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                'Hi, Harvey!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          
          // Notification section
          Stack(
            children: [
              Image.network(
                'https://dashboard.codeparrot.ai/api/image/Z7RHt6WN819FoZlP/image-66.png',
                width: 22,
                height: 22,
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    color: Color(0xFFB38F3F),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: 'Exo',
                        fontWeight: FontWeight.w400,
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

