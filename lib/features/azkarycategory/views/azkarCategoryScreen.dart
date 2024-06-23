import 'package:azkary/core/appsstyle.dart';
import 'package:azkary/core/colorcore.dart';
import 'package:azkary/core/image_core.dart';
import 'package:azkary/features/azkarycategory/data_model/list_azkary_screen.dart';
import 'package:flutter/material.dart';
import 'widget/azkary_category_item.dart';
class AzkaryCategoryScreen extends StatelessWidget {
  const AzkaryCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
         body: Container(
        decoration:
        const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImage.background_Image),
            )
        ),
          child: CustomScrollView(
          slivers: [
           SliverAppBar(
             title:const Text(
               "اذكار المسلم ",
               style: AppStyle.appBarTileTextStyle,
             ),
             centerTitle: true,
             leading: IconButton(
               icon: const Icon(  Icons.arrow_back_ios_new,
                 color: AppColor.blackColor,
               ),
               onPressed: (){
                 Navigator.pop(context);
               },
             ),
             elevation: 0,
             backgroundColor: Colors.transparent,
           ),
            SliverList.separated(
              itemBuilder: (context, index) => CustomAzkaryItem(index: index,),
              itemCount: listAzkaryScreen.length,
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10,) ,),
          ],
        )
      ),
    );
  }
}
