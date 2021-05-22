import 'package:flutter/material.dart';
import 'package:flutter_float/flutter_float.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'this is flutter float',
                ),
              ],
            ),
          ),
        ),

        FloatingView(
          backEdge: true,
          offset: Offset(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * 3 / 4,
          ),
          //将要执行动画的子view
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 40,
            backgroundImage: NetworkImage(
                "https://img1.baidu.com/it/u=2196634016,1990933817&fm=26&fmt=auto&gp=0.jpg"),
          ),
        ),


        FloatingView(
          backEdge: false,
          offset: Offset(0, 200),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepOrange,
            ),
            child: Text("我是可以移动的哦"),
          ),
        ),
      ],
    );
  }
}
