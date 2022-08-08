import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexa2/views/Course.dart';
import 'package:hexa2/views/CourseDetailes.dart';
import 'package:hexa2/views/Profile.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/CardStack.dart';
import '../widgets/CutomBottomNavigation.dart';
import '../widgets/StackWithDetails.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? TabCont;
  var taps = [
    const Tab(
      text: "In Progress",
    ),
    const Tab(
      text: "Saved",
    ),
    const Tab(
      text: "Coaching",
    ),
    const Tab(
      text: "Homework",
    )
  ];

  @override
  void initState() {
    TabCont = TabController(
      length: taps.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EAE9E5"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/svg/logo2.svg"),
                        const Spacer(),
                        Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 40,
                                spreadRadius: 0.1)
                          ]),
                          width: 50,
                          height: 50,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: const [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.red,
                                backgroundImage: NetworkImage(
                                    "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TabBar(
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(width: 3.0, color: HexColor("#2EAFBE")),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: taps,
                controller: TabCont,
              ),
              SizedBox(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Course()));
                        },
                        child: const CardStack())),
              ),
              const CardStackDetails(
                title: "WATCH HISTORY",
                isDotted: false,
              ),
              const CardStackDetails(
                isDotted: true,
                title: "TRENDING NOW",
              ),
              const CardStackDetails(
                isDotted: true,
                title: "BEST SKILLS",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
