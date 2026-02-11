import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/newest.dart';
import 'package:gamestore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing',
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy',
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182F2),
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: categories[index]['color'] as Color,
                    ),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categories[index]['title'] as String,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              )),
              separatorBuilder: ((context, index) => SizedBox(width: 33)),
              itemCount: categories.length,
            ),
          ),
          const Text(
            'Popular game',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          PopularGame(),
          const SizedBox(height: 10),
          Text(
            'Newest game',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
