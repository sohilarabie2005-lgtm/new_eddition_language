import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){
      setState(
        () 
    {
      isFavorite = !isFavorite;
    });
    }, icon: Icon(isFavorite?Icons.favorite:Icons.favorite_border,
    color:isFavorite?Colors.red:Color(0xFF272159),));
  }
}