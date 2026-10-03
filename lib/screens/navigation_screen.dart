/* import 'package:flutter/material.dart';
import 'package:new_eddition_language/screens/favorite_screen.dart';
import 'package:new_eddition_language/screens/home_screen.dart';
import 'package:new_eddition_language/models/word.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NavigationScreen> {
  int currentIndex = 0;
  List<Word>favorites=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E8F2),
     body: currentIndex == 0
    ? Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => const Homescreen(),
          );
        },
      )
    : const FavoriteScreen(),
     bottomNavigationBar: Padding(
  padding: const EdgeInsets.only(
    //bottom: 16,
    //left: 16,
    //right: 16,
  ),
  child: Container(
    decoration: BoxDecoration(
      color:  Colors.white.withValues(alpha: 0.6),

      borderRadius: BorderRadius.circular(20),

      border: Border.all(
        color: Colors.white.withValues(alpha: 0.7),
        width: 2,
      ),

      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.15),
          blurRadius: 18,
          offset: Offset(0, 5),
        ),
      ],
    ),

    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: NavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        height: 80,

        selectedIndex: currentIndex,

        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },

        destinations: [
          NavigationDestination(
            icon: Icon(Icons.category_outlined),
            selectedIcon: Icon(Icons.category),
            label: 'Category',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    ),
  ),
),
    );
  }
}
 */