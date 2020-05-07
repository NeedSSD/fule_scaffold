import 'package:flutter/material.dart';
import 'package:fule_scaffold/fule_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FuleScaffold(
        useSafeArea: false,
        statusBarColor: Color(0x55FFFFFF),
        body: Container(
          height: 1000,
          child: Image.network(
            'https://i.loli.net/2020/04/16/gpIVeN8a2m93nXt.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
