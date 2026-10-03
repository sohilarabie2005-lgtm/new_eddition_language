import 'package:flutter/material.dart';
import 'package:new_eddition_language/widgets/card_of_words.dart';
class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

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
          'Animals',
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
                      name: 'Elephant',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/elefant_no_background.png',
                      audio: 'assets/sounds/animalss/elefant.mp3',
                    ),

                    CardForWords(
                      name: 'chicken',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/chicken_08_no_background.png',
                      audio: 'assets/sounds/animalss/chicken_sound.mp3',
                    ),
                  ],
                ),

                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardForWords(
                      name: 'Sheep',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/sheep_no_background.png',
                      audio: 'assets/sounds/animalss/sheep.mp3',
                    ),
                    CardForWords(
                      name: 'Fox',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/fox_no_background.png',
                      audio: 'assets/sounds/animalss/fox.mp3',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardForWords(
                      name: 'Giraffe',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/giraffe_no_background.png',
                      audio: 'assets/sounds/animalss/giraffe.mp3',
                    ),
                    CardForWords(
                      name: 'Frog',
                      colorofback: Color(0xFFFCEED8),
                      colorofvoice: Color(0xFFFAC775),
                      picture: 'assets/images/animal/frog_no_background.png',
                      audio: 'assets/sounds/animalss/frog.mp3',
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
