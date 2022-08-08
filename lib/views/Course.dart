import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/LessonItem.dart';
import 'Reviews.dart';

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Course Details",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          iconSize: 10,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/svg/back.svg",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Diploma Of Information Technology Networking",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: "By  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: "Gilberto S. Osborne",
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              const Text("36 Reviews",
                                  style: TextStyle(fontSize: 12)),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Reviews()));
                                  },
                                  child: Text("(View All)",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: HexColor("#C99200"))))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: "Start On  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                      text: "05 Feb 2020",
                                      style: TextStyle(color: Colors.grey)),
                                ]),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "27 Lessions",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "75.00 KWD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#2EAFBE"),
                            fontSize: 26),
                      ),
                      const Text(
                        "About Course",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                        style: TextStyle(color: HexColor("#2A2525")),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                          LessonItem(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
