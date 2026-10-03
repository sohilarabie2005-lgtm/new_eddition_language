import 'package:flutter/material.dart';
import 'package:new_eddition_language/widgets/card_of_words.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF2E9F6),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 25,
            ),
          ),
        ),
        title: Text(
          'Vegetables',
          style: TextStyle(
            color: Color(0xFF272159),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEFE9F8), Color(0xFFF7E8F2)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardForWords(
                      name: 'Carrot',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/vegetables/Carrot.png',
                      audio: 'assets/sounds/vegetabless/carrot.mp3',
                    ),
                    CardForWords(
                      name: 'Cucumber',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/vegetables/Cucumber.png',
                      audio: 'assets/sounds/vegetabless/cu.mp3',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardForWords(
                      name: 'Eggplant',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture:
                          'assets/images/vegetables/Eggplant Vegetable.png',
                      audio: 'assets/sounds/vegetabless/Eggplant.mp3',
                    ),
                    CardForWords(
                      name: 'Garlic',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/vegetables/Garlic.png',
                      audio: 'assets/sounds/vegetabless/garlic.mp3',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardForWords(
                      name: 'Potato',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/vegetables/Potato.png',
                      audio: 'assets/sounds/vegetabless/potato.mp3',
                    ),
                    CardForWords(
                      name: 'Tomato',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/vegetables/Tomato.png',
                      audio: 'assets/sounds/vegetabless/tomato.mp3',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
