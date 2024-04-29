import 'package:circular/circular.dart';
import 'package:flutter/material.dart';

import '../../core/image_core.dart';

class SebhaBody extends StatefulWidget {
  const SebhaBody({Key? key}) : super(key: key);

  @override
  _SebhaBodyState createState() => _SebhaBodyState();
}

class _SebhaBodyState extends State<SebhaBody> {
   double counter=0 ; // Initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.background_Image),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                "سبحه",
                style: TextStyle(
                  color: Color(0xff84835A),
                  fontSize: 25,
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () {
                  {
                    if (counter < 33) {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                    } else {
                      // Reset counter if it reaches the maximum value
                     setState(() {
                       counter = 0;
                     });
                    }
                  }
                },
                child: CircularViewer(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-10, -10),
                        color: Colors.white,
                        blurRadius: 20,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        offset: Offset(10, 10),
                        color: Color.fromARGB(255, 158, 158, 158),
                        blurRadius: 20,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  value: counter,
                  maxValue: 33,
                  radius: 100,
                  textStyle: TextStyle(fontSize: 30),
                  color: Color(0xffEEEEEE),
                  sliderColor: Color(0xff62CBDA),
                  unSelectedColor: Color(0xffD7DEE7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
