import 'package:azkary/core/appsstyle.dart';
import 'package:azkary/core/colorcore.dart';
import 'package:azkary/core/text_core.dart';
import 'package:azkary/ui/qibla_screen.dart';
import 'package:azkary/ui/time_praying_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/image_core.dart';
import '../../../ui/azkar_screen.dart';
import '../../../ui/sebha_screen.dart';
import 'widget/container_homepage.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.background_Image),
                fit: BoxFit.fill,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(AppText.homePageTitle_text,
              style: AppStyle.styleFontTitleHomePage,
            ),

            const SizedBox(
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

                const SizedBox(width: 20),

                CustomContainerHomePage(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const TimePrayingScreen(),));
                  },
                  image: AppImage.praying_Image,
                  text: AppText.timePrayingContainer_text,
                ),

              ],

            ),

            const SizedBox(
              height: 20,
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CustomContainerHomePage(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const sebhaScreen(),));
                    },
                    image: AppImage.arabic_Image,
                    text: AppText.elsabhaContainer_text
                ),

                const SizedBox(width: 20),

                CustomContainerHomePage(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const QiblahPage(),));
                  },
                  image: AppImage.qibla_Image,
                  text: AppText.qiblaContainer_text,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
