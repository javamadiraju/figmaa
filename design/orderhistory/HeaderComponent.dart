import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String userName;
  final int notificationCount;

  const HeaderComponent({
    Key? key,
    this.userName = 'User',
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 400),
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB03838), Color(0xFFB03838)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Image.network(
            'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/logo-cra.png',
            width: 98,
            height: 21.66,
            fit: BoxFit.contain,
          ),
          
          // Right section with notification and greeting
          Row(
            children: [
              // User greeting
              Text(
                'Hi, $userName!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Exo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 20),
              // Notification stack
              Stack(
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    child: Image.network(
                      'https://dashboard.codeparrot.ai/api/image/Z7RIRDO_YEiK210c/image-66.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (notificationCount > 0)
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
                            '$notificationCount',
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
        ],
      ),
    );
  }
}

