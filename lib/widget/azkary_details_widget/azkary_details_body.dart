import 'package:azkary/data_variable/list_azkar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../core/image_core.dart';
import '../../data_variable/azkar_model.dart';
import '../../data_variable/zekr_model.dart';

class CutomAzkaryDetails extends StatefulWidget {
   CutomAzkaryDetails({super.key,required this.models,required this.title_appbar});
  List<AzkarModel> models;
  String title_appbar;

  @override
  State<CutomAzkaryDetails> createState() => _CutomAzkaryDetailsState();
}

class _CutomAzkaryDetailsState extends State<CutomAzkaryDetails> {
  @override
  Widget build(BuildContext context) {
    double changeValue=0;
    List<ZekrModel>? zekrList=[];
    for (AzkarModel azkarModel in widget.models) {
      List<ZekrModel> zekrModels = azkarModel.zekr;
      zekrList.addAll(zekrModels);
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          right: 16,
          left: 16,
          top: 16,
        ),
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
                "${widget.title_appbar}",
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
              itemBuilder: (BuildContext context, int index) =>Container(child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                  color: Color(0xff9E9660),
                  borderRadius: BorderRadius.circular(20),
                  ),
                     child: Text('''${zekrList[index].title}''',
                     textDirection: TextDirection.rtl,
                  ),
                    ),
                    SizedBox(height: 10,),
                    GFButtonBadge(
                  color: Color(0xff9E9660),
                  onPressed: () {
                   setState(() {
                     if(zekrList[index].number>0){
                       zekrList[index].number--;
                     }

                   });
                  },
                  text: 'عدد مرات التكرار',
                  icon: GFBadge(
                  child: Text("${zekrList[index].number}",
                  style: TextStyle(
                  fontSize: 15,
                  ),
                  ),
                  ),
                  ),
                    SizedBox(height: 8,),
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GFProgressBar(
                  percentage: changeValue ,
                  backgroundColor : Colors.black26,
                  progressBarColor: Color(0xff9E9660),
                  leading: Icon(Icons.sentiment_dissatisfied_outlined,
                  color:Color(0xff9E9660),
                  ),
                  clipLinearGradient: true,
                  isDragable: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  lineHeight: 25,
                  circleWidth:100,
                  animation:true,
                  trailing:  Icon(Icons.sentiment_satisfied_alt,
                  color: Color(0xff9E9660),

                  ),
                  child: Center(
                  child: Text("${(changeValue * 100).toStringAsFixed(0)}%",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  ),
                  ),
                  ),
                  ),
                  ),
                    SizedBox(height: 8,),
                    Divider(),
                  ],
                  ),
                  ),
              separatorBuilder: (BuildContext context, int index) =>  SizedBox(height: 10,),
              itemCount: widget.models.length,
            )
          ],
        ),
      )
    );}
}
