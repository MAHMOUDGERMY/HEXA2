import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Row(
            children: [
              Text(
                "Lesson 01:",
                style: TextStyle(
                    color: HexColor("#2EAFBE"),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Introduction",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              SvgPicture.asset("assets/svg/play.svg")
            ],
          ),
        ),
      ),
    );
  }
}
