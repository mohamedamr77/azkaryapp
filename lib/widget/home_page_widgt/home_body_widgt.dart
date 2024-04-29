import 'package:azkary/core/text_core.dart';
import 'package:azkary/ui/qibla_screen.dart';
import 'package:azkary/ui/time_praying_screen.dart';
import 'package:flutter/material.dart';
import '../../core/image_core.dart';
import '../../ui/azkar_screen.dart';
import '../../ui/sebha_screen.dart';
import 'container_homepage.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.background_Image),
          fit: BoxFit.fill
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
               Text(AppText.homePageTitle_text,
                   style: TextStyle(
                     color: Color(0xff848357),
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
               SizedBox(
                height: 30,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomContainerHomePage(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>AzkarScreen(),));
                    },
                    image: AppImage.quran_Image,
                    text: AppText.azkarContainer_text,
                  ),
                  SizedBox(width: 20),
                  CustomContainerHomePage(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>TimePrayingScreen(),));
                    },
                    image: AppImage.praying_Image,
                    text: AppText.timePrayingContainer_text,
                  ),
                ],
              ),
               SizedBox(
                 height: 20,
               ),
               Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomContainerHomePage(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>sebhaScreen(),));
                  },
                image: AppImage.arabic_Image,
                text: AppText.elsabhaContainer_text
              ),
              SizedBox(width: 20),
              CustomContainerHomePage(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>QiblaScreen(),));
                },
                image: AppImage.qibla_Image,
                text: AppText.qiblaContainer_text,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
