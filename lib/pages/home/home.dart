import "package:flutter/material.dart";
import "package:gamestore/pages/home/widgets/category.dart";
import "package:gamestore/pages/home/widgets/header.dart";
import "package:gamestore/pages/home/widgets/search.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: Offset(150, 50),
              child: Image.asset("assets/images/bg_liquid.png", width: 200),
            ),

            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: Offset(180, 100),
                child: Image.asset("assets/images/bg_liquid.png", width: 200),
              ),
            ),

            Column(
              children: [
                HeaderSection(),
                SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: CustomeNavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CustomeNavigationBar() => Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.2),
          spreadRadius: 5,
          blurRadius: 10,
        ),
      ],
    ),

    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.home, size: 30, color: Colors.grey),
            ),
            label: "home",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.home, size: 30, color: Colors.grey),
            ),
            label: "Application",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
            label: "Film",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.auto_stories_rounded,
                size: 30,
                color: Colors.grey,
              ),
            ),
            label: "Book",
          ),
        ],
      ),
    ),
  );
}
