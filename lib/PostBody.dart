
import 'package:flutter/material.dart';

class PostBody extends StatefulWidget {
  String body;
  int id;
  PostBody({this.body,this.id});
  @override
  _PostBodyState createState() => _PostBodyState();
}

class _PostBodyState extends State<PostBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text(
            'Post '+widget.id.toString(),
            style: TextStyle(fontSize: 30),
          )), 
     body: Center(child: Card(child: Padding(
       padding: const EdgeInsets.all(20),
       child: Text(widget.body,style: TextStyle(fontSize: 20),),
     )))
    );
  }
}