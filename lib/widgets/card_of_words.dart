import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:new_eddition_language/widgets/heart.dart';

class CardForWords extends StatelessWidget {
  final String audio;
  final String picture;
  final String name;
  final Color colorofback;
  final Color colorofvoice;

  const CardForWords({
    super.key,
    required this.picture,
    required this.name,
    required this.colorofback,
    required this.colorofvoice,
    required this.audio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: colorofback,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                picture,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 8,
              right: 8,
              bottom: 8,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: 'Fredoka',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF272159),
                      ),
                    ),
                    const SizedBox(width: 0),
                    const Heart(),
                  ],
                ),

                const SizedBox(height: 10),

                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: colorofvoice,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: IconButton(
                    onPressed: () async {
                      final player = AudioPlayer();

                      await player.setAsset(audio);
                      await player.play();

                      await player.dispose();
                    },
                    icon: const Icon(Icons.volume_up),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}