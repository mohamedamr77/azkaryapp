import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SebhaBody extends StatelessWidget {
  const SebhaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("sa",
           style: TextStyle(
             color: Colors.black,
             fontSize: 210,
           ),
           ),
         ],
        ),
      ),
    );
  }
}
