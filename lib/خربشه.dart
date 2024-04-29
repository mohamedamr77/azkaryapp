// GestureDetector(
// onTap: () {
//
// setState(() {
// books[widget.index].Book = !books[widget.index].Book;
// });
//
// },
// child: Positioned(
// right: 400,
// top: 11,
// child: Icon
// (
// books[widget.index].Book == true ?
//
// Icons.health_and_safety
//
//     :
// Icons.health_and_safety_outlined,color: Colors.red,)),
// ),
//





/*
 sebha body
import 'package:azkary/core/image_core.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SebhaBody extends StatelessWidget {
  const SebhaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.background_Image,),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2 ,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index)  =>Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("سبحان الله"),
                    SizedBox(height: 40,),
                    GFProgressBar(
                      percentage: 0.1,
                      width: 120, // Increased width
                      radius: 120, // Increased radius
                      type: GFProgressType.circular,
                      backgroundColor: GFColors.LIGHT,
                      progressBarColor: GFColors.SUCCESS,
                      circleWidth: 10,
                      leading: Text("90%",
                        style: TextStyle(
                          color:  Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      trailing:  Icon(Icons.sentiment_dissatisfied_rounded,
                        color: Colors.brown,
                      ),

                    ),
                  ],
                ),
                itemCount: 10,

              )
           ],
          ),
        ),
      ),
    );
  }
}

 */