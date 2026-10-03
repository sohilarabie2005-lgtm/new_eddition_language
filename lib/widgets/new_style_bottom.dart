import 'package:flutter/material.dart';

class NewStyleBottom extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color colorofbox;
  final Color colorofarrow;
  final Widget destination;

  const NewStyleBottom({
    required this.colorofarrow,
    required this.colorofbox,
    required this.icon,
    required this.text,
     required this.destination,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>destination,));},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255).withValues(alpha: 0.6),
          side: BorderSide(color: const Color.fromARGB(255, 255, 255, 255).withValues(alpha:0.7), width: 2),
          foregroundColor: Color.fromARGB(255, 15, 7, 7),
          shadowColor: Colors.black45,
          fixedSize: Size(390, 90),
          
          elevation: 8,
        ),

        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: colorofbox,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon, size: 40),
            ),
            SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 20, fontFamily: 'Fredoka')),
            Spacer(),
            Container(
              width:40,
              height:40,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color:colorofarrow,
              ),
              child:Icon(Icons.arrow_forward, size: 25, weight: 1000),)
          ],
        ),
      ),
    );
  }
}
