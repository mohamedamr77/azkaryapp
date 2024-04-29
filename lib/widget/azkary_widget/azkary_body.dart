import 'package:azkary/core/image_core.dart';
import 'package:azkary/data_variable/azkaryscreen/list_azkary_screen.dart';
import 'package:flutter/material.dart';
import 'azkary_item.dart';
class CustomAzkaryBody extends StatelessWidget {
  const CustomAzkaryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
         body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImage.background_Image),
            )
        ),
          child: CustomScrollView(
          slivers: [
           SliverAppBar(
             title:Text(
               "اذكار المسلم ",
               style: TextStyle(
                   color: Color(0xff84835A),
                   fontSize: 25,
                   fontFamily: "Tajawal",
                   fontWeight: FontWeight.bold
               ),
             ),
             centerTitle: true,
             leading: IconButton(
               icon: Icon(  Icons.arrow_back_ios_new,
                 color: Colors.black,),
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
              separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10,) ,),
          ],
        )
      ),
    );
  }
}
