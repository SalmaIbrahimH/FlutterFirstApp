import 'package:flutter/material.dart';

class ImgCard extends StatefulWidget {
  @override
  _ImgCardState createState() => _ImgCardState();
}

class _ImgCardState extends State<ImgCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Card(child: Image.network('https://picsum.photos/300/200'))));
  }
}