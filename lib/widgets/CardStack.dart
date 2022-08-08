import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardStack extends StatelessWidget {
  const CardStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:const DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg" ) ,fit: BoxFit.cover),
        color: Colors.red,
        borderRadius: BorderRadius.circular(10)
      ),
      margin:const EdgeInsets.all(10),
      
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15 , vertical:15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Dieter Rams" , style: TextStyle(color: HexColor("#1D1D1B")),),
               const SizedBox(height: 10,),
               const Text("A Simple Guide to Pricing Your Virtual Products", style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.start,
                  barRadius:const Radius.circular(10),
                  backgroundColor: HexColor("#E6D8BD"),
                  percent: 0.5,
                  progressColor: HexColor("#2EAFBE"),
                  
                  

                )
              ],
            ),
          )
        ],
        
      ),
      
     
    );
  }
}

