import 'package:lab/PostBody.dart';
import 'package:lab/models/posts.dart';
import 'package:lab/services/postsService.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  String text;
  String body;
  int id;
  Post({this.text,this.body,this.id});
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
                      child: Text(
              widget.text,
              style: TextStyle(fontSize: 30),
            ),
          onTap: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PostBody(body:widget.body,id:widget.id,)));},),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.thumb_up),
            ),
            Text('Like'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.comment),
            ),
            Text('Comment')
          ],
        )
      ],
    ));
  }
}
