import 'package:lab/models/posts.dart';
import 'package:lab/post.dart';
import 'package:lab/services/postsService.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  List<Posts> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostFromsServer();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getPostFromsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "page 2",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: Post(
                  text: postList[index].title,
                  body: postList[index].body,
                  id:postList[index].id
                ),
              );
            }));
  }
}
