import 'package:azkary/core/appsstyle.dart';
import 'package:azkary/core/colorcore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainerHomePage extends StatelessWidget {
  String image;
  String text;
  void Function()? onTap;
   CustomContainerHomePage({super.key,required this.image,required this.text,required this.onTap});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap:onTap ,
      child: Container(
         height: MediaQuery.of(context).size.height*0.2,
        width: MediaQuery.of(context).size.width/2-30,

        decoration: BoxDecoration(
            color: AppColor.lightGreyColor.withOpacity(0.7),
            borderRadius: BorderRadius.circular(40)
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(image:AssetImage(image),
                width: MediaQuery.of(context).size.width*0.25,
              ),
            ),
           const SizedBox(height: 10),
            Text(text,
              style:  AppStyle.styleFontContainerHomePage,
            )
          ],
        ),
      ),
    );
  }
}
