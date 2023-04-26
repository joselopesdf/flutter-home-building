
import 'package:exemplo/Home_page/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}

