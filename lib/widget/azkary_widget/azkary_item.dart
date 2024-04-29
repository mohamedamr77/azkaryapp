import 'package:azkary/data_variable/azkaryscreen/list_azkary_screen.dart';
import 'package:flutter/material.dart';

import '../../data_variable/list_azkar.dart';
import '../../ui/azkary_details.dart';
import '../azkary_details_widget/azkary_details_body.dart';
class CustomAzkaryItem extends StatelessWidget {
  int index;
   CustomAzkaryItem({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            index==0?
            CutomAzkaryDetails(
           models: azkarList.where((title) =>title.title=="Morning Azkar" ).toList(),
           title_appbar: "اذكار الصباح",
        ):
           index==1? CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="night Azkar" ).toList(),
              title_appbar: "اذكار المساء",
            ):
            index==2?   CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="getOut Azkar" ).toList(),
              title_appbar: "اذكار الخروج",
            ):
            index==3?  CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="getUp Azkar" ).toList(),
              title_appbar: "اذكار الاستيقاظ",
            ):
            index==4?   CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="sleeping Azkar" ).toList(),
              title_appbar: "اذكار النوم",
            ):
            index==5?   CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="afterPraying Azkar" ).toList(),
              title_appbar: "اذكار بعد الصلاة",
            ):
            index==6?    CutomAzkaryDetails(
              models: azkarList.where((title) =>title.title=="getOut Azkar" ).toList(),
              title_appbar: "اذكار النوم",
            ):
             index==7?   CutomAzkaryDetails(
               models: azkarList.where((title) =>title.title=="eating Azkar" ).toList(),
               title_appbar: "اذكار الطعام",
             ):
             CutomAzkaryDetails(
               models: azkarList.where((title) =>title.title=="islamic Azkar" ).toList(),
               title_appbar: "الرقيه الشرعيه",
             )
        )
        );
      },
      child: Container(
        margin: index==0?  EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
        ): index ==listAzkaryScreen.length-1? EdgeInsets.only(
                 left: 20,
                 right: 20,
                 bottom: 20,
               ): EdgeInsets.symmetric(
                 horizontal: 20,

               ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        //alignment: Alignment.centerRight,
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.13,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image:AssetImage(listAzkaryScreen[index].image),
                width: 80,
                height: 80,
              ),
              SizedBox(width: 8,),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
                width: 30,
                thickness: 2,
                color: Colors.orange,
              ),
              SizedBox(width: 8,),
              Text(listAzkaryScreen[index].title,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tajawal"
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
//getOut Azkar