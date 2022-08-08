import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../views/CourseDetailes.dart';

class CardStackDetails extends StatefulWidget {
  final String title;
  final bool isDotted;
  const CardStackDetails({
    Key? key,
    required this.title,
    required this.isDotted,
  }) : super(key: key);

  @override
  State<CardStackDetails> createState() => _CardStackDetailsState();
}

class _CardStackDetailsState extends State<CardStackDetails> {
  double pos = 0.0;
  ScrollController? scroll;
  @override
  void initState() {
    scroll =
        ScrollController(keepScrollOffset: false, initialScrollOffset: 0.0);

    scroll!.addListener(() {
      var p = scroll!.offset / 300;
      setState(() {
        pos = p.toDouble();
      });

      print(scroll!.offset);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(widget.title),
                const Spacer(),
                widget.isDotted
                    ? DotsIndicator(
                        reversed: false,
                        position: pos,
                        onTap: (position) {
                          pos = position;
                          setState(() {
                            scroll!.animateTo(position * 300,
                                duration: const Duration(milliseconds: 800),
                                curve: Curves.ease);
                          });
                          print(position);
                        },
                        decorator: DotsDecorator(
                            activeColor: HexColor("#087E8B"),
                            color: HexColor("#D9D6CD")),
                        dotsCount: 3,
                      )
                    : InkWell(
                        onTap: () {},
                        child: SvgPicture.asset("assets/svg/arrowR.svg"))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            child: ListView.builder(
                controller: scroll,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseDetailes()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        height: 170,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150,
                              child: Stack(children: [
                                Container(
                                  height: 130,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(20)),
                                    color: HexColor("#EAE9E5"),
                                  ),
                                  child: Text(
                                    "BEGINNER",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: HexColor("#087E8B")),
                                  ),
                                )
                              ]),
                            ),
                            const Text(
                              "Dieter Rams",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            const Text(
                              "Illustrator 2021 MasterClass",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: HexColor("#C1AA6A"),
                                ),
                                Icon(
                                  Icons.star,
                                  color: HexColor("#C1AA6A"),
                                ),
                                Icon(
                                  Icons.star,
                                  color: HexColor("#C1AA6A"),
                                ),
                                Icon(
                                  Icons.star,
                                  color: HexColor("#D9D6CD"),
                                ),
                                Icon(
                                  Icons.star,
                                  color: HexColor("#D9D6CD"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
