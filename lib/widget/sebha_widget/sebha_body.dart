import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../core/image_core.dart';

class SebhaBody extends StatefulWidget {
  const SebhaBody({Key? key}) : super(key: key);

  @override
  _SebhaBodyState createState() => _SebhaBodyState();
}

class _SebhaBodyState extends State<SebhaBody> {
  double counter = 0; // Initial value
  double maxCounter = 33;// Maximum value for counter
  int index=0;
  @override
  Widget build(BuildContext context) {
    double percentage = counter / maxCounter; // Calculate the percentage
    List<String> list=[
      "سبحان الله",
      "الحمد الله",
      "الله اكبر",
      "لا اله الا الله"
    ];
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.18,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (counter < maxCounter) {
                          counter++;
                          print(counter);
                        } else {
                          // Reset counter if it reaches the maximum value
                          counter = 0;
                          index++;
                          if (index >= list.length) {
                            index = 0; // Reset index if it exceeds the list length
                          }
                        }
                      });
                    },
                    child: Center(
                      child: CircularPercentIndicator(
                        radius: 100,
                        lineWidth: 25,
                        percent: percentage,
                        progressColor: Colors.amber,
                        backgroundColor: Colors.black26,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Text(
                          "${counter.toInt()}",
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                      });
                    }, child:
                  Text(list[index],
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Tajawal"
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3C312F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(4),
                            topLeft:Radius.circular(60) ,
                            topRight: Radius.circular(4),
                          ),
                        ),
                        minimumSize: Size(260, 44)
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}


/*
 onTap: () {setState(() {
                    if (counter < 33) {
                      counter++;
                      print(counter);
                    } else {
                      // Reset counter if it reaches the maximum value
                      counter = 0;
                    }
                  });
 */


/*
Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  width: 200, // Adjust width as needed
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff62CBDA), // Change color as needed
                  ),
                  child: Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
 */



/*
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
 */