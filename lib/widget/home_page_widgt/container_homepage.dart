import 'package:flutter/material.dart';


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
            color: Color(0xffD8D6D4).withOpacity(0.7),
            borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(image:AssetImage(image),
                width: 90,
                height: 90,
              ),
            ),
            SizedBox(height: 10),
            Text(text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
