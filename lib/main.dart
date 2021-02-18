import 'package:flutter/material.dart';

import 'mypage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Sign In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                  )),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                                    child: Text('Sign In'),

                onPressed:() { Navigator.push( context,
                    MaterialPageRoute(builder: (context) => MyPage()));
                }
                ),
              ),
              

Padding(
   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
   child: Text(
                'Need an acount? Register',style: TextStyle(
            fontSize: 22,))
),
         Padding(
   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
   child:     
              Text('Forgot password',style: TextStyle(
            fontSize: 22)
        ))]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
