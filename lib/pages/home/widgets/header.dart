import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsetsGeometry.only(top: 25)),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'What would you like to play ?',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
