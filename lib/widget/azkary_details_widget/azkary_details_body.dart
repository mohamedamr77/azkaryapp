import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../core/image_core.dart';
import '../../data_variable/azkar_model.dart';
import '../../data_variable/zekr_model.dart';

class CutomAzkaryDetails extends StatefulWidget {
  CutomAzkaryDetails({Key? key, required this.models, required this.title_appbar});
  final List<AzkarModel> models;
  final String title_appbar;

  @override
  State<CutomAzkaryDetails> createState() => _CutomAzkaryDetailsState();
}
class _CutomAzkaryDetailsState extends State<CutomAzkaryDetails> {
  List<ZekrModel> zekrList = [];
  int percentCounter = 0;
  @override
  void initState() {
    super.initState();
    for (AzkarModel azkarModel in widget.models) {
      List<ZekrModel> zekrModels = azkarModel.zekr;
      zekrList.addAll(zekrModels);

    }
  }

  @override
  Widget build(BuildContext context) {
    double percentage = percentCounter / zekrList.length;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.title_appbar}",
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
          ),
        ),
        child:Column(
          children: [
            LinearPercentIndicator(
              lineHeight: 25,
              percent: percentage,
              progressColor:Color(0xff84835A),
              backgroundColor: Colors.grey[400],
              barRadius: Radius.circular(20),
              center: Text("${(percentage * 100).toStringAsFixed(0)}%"),
            ),
            SizedBox(height: 10,),
            Expanded(child: ListView.separated(
              itemBuilder: (BuildContext context, int index) => Container(
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff3C312F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${zekrList[index].title.trim()}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 15,
                           // fontFamily: "Tajawal",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GFButtonBadge(
                      color: Color(0xff9E9660),
                      onPressed: () {
                        setState(() {
                          if (zekrList[index].number > 0) {
                            zekrList[index].number--;
                            if (zekrList[index].number == 0) {
                              percentCounter++;
                            }
                          }
                        });
                      },
                      text: 'عدد مرات التكرار',
                      icon: GFBadge(
                        color: Colors.brown,
                        child: Text(
                          "${zekrList[index].number}",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Divider(),
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
              itemCount: zekrList.length,

            )
            )
          ],
        )
      ),
    );
  }
}

/*
title: Text(
                "${widget.title_appbar}",
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
 */


/*
 itemBuilder: (BuildContext context, int index) => Container(
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff9E9660),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${zekrList[index].title.trim()}',
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    SizedBox(height: 10),
                    GFButtonBadge(
                      color: Color(0xff9E9660),
                      onPressed: () {
                        setState(() {
                          if (zekrList[index].number > 0) {
                            zekrList[index].number--;
                            if (zekrList[index].number == 0) {
                              percentCounter++;
                            }
                          }
                        });
                      },


                      text: 'عدد مرات التكرار',
                      icon: GFBadge(
                        child: Text(
                          "${zekrList[index].number}",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Divider(),
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(height: 10),
              itemCount: zekrList.length,
 */