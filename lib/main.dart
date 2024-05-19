import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/homepage/views/home_page_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}