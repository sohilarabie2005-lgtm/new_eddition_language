
import 'package:flutter/material.dart';
import 'package:new_eddition_language/screens/home_screen.dart';



class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() {
    return _SplashscreenState();
  }
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Homescreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
               Color(0xFFF2E9F6), Color(0xFFF8E9F1),
            ],
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LEARNING ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        fontFamily: 'Fredoka',
                        color: Color.fromARGB(255, 197, 66, 0),
                      ),
                    ),
                    Text(
                      'ENGLISH',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 35,
                        fontFamily: 'Fredoka',
                        color: Color.fromARGB(255, 197, 66, 0),
                      ),
                    ),
                    Text(
                      'FOR KIDS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'Fredoka',
                        color: Color.fromARGB(255, 248, 172, 72),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Image.asset(
                  'assets/images/external/image 1.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

