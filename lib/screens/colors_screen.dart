import 'package:flutter/material.dart';
import 'package:new_eddition_language/widgets/card_of_words.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

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
          'Colors',
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
            colors: [
              Color(0xFFEFE9F8),
              Color(0xFFF7E8F2),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: [

                // Blue + Green
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    CardForWords(
                      name: 'Blue',
                      colorofback: Color(0xFFDDEBFF),
                      colorofvoice: Color(0xFF8DB8FF),
                      picture:
                          'assets/images/colors/blue-paint-drop-icon.png',
                      audio: 'assets/sounds/colorss/blue.mp3',
                    ),

                    CardForWords(
                      name: 'Green',
                      colorofback: Color(0xFFDFF5E1),
                      colorofvoice: Color(0xFF8DD494),
                      picture:
                          'assets/images/colors/green-paint-drop-icon.png',
                      audio: 'assets/sounds/colorss/green.mp3',
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // Red + Yellow
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    CardForWords(
                      name: 'Red',
                      colorofback: Color(0xFFFFE0E0),
                      colorofvoice: Color(0xFFFF9999),
                      picture:
                          'assets/images/colors/red-paint-drop-icon.png',
                      audio: 'assets/sounds/colorss/red.mp3',
                    ),

                    CardForWords(
                      name: 'Yellow',
                      colorofback: Color(0xFFFFF3C4),
                      colorofvoice: Color(0xFFFAC775),
                      picture:
                          'assets/images/colors/yellow-paint-drop-icon.png',
                      audio: 'assets/sounds/colorss/yello.mp3',
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