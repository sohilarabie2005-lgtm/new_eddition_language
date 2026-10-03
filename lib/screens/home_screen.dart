import 'package:flutter/material.dart';
import 'package:new_eddition_language/screens/animal_screen.dart';
import 'package:new_eddition_language/screens/colors_screen.dart';
import 'package:new_eddition_language/screens/numbers_screen.dart';
import 'package:new_eddition_language/screens/vegetables_screen.dart';
import 'package:new_eddition_language/widgets/new_style_bottom.dart';
import 'package:tabler_icons_plus/tabler_icons_plus.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF2E9F6), Color(0xFFF8E9F1)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose a ',
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26215C),
                          ),
                        ),
                        Text(
                          'category',
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26215C),
                          ),
                        ),
                        Text(
                          'Pick something fun to learn',
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 20,
                            color: Color.fromARGB(255, 88, 78, 202),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                NewStyleBottom(
                  destination: AnimalScreen(),
                  colorofarrow: Color(0xFFEAE9FA),
                  icon: TablerIcons.paw,
                  text: 'Animal',
                  colorofbox: Color(0xFFEAE9FA),
                ),
                SizedBox(height: 16),
                NewStyleBottom(
                  destination: VegetablesScreen(),
                  colorofarrow: Color(0xFFDBEFE9),
                  icon: TablerIcons.carrot,
                  text: 'Vegetables',
                  colorofbox: Color(0xFFDBEFE9),
                ),
                SizedBox(height: 16),
                //SpecialCustomisedbuttom(),

                NewStyleBottom(
                  destination: NumbersScreen(),
                  colorofarrow: Color(0xFFF8E3EA),
                  icon: TablerIcons.numbers,
                  text: 'Numbers',
                  colorofbox: Color(0xFFF8E3EA),
                ),
                SizedBox(height: 16),
                NewStyleBottom(
                  destination: ColorsScreen(),
                  colorofarrow: Color.fromARGB(255, 227, 243, 161),
                  icon: TablerIcons.palette,
                  text: 'Colors',
                  colorofbox: Color.fromARGB(255, 227, 243, 161),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
