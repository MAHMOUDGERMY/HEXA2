import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          color: Colors.white),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              print("taped");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print("taped");
                    },
                    icon: SvgPicture.asset("assets/svg/home.svg")),
                const Text(
                  "home",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print("taped");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    print("taped");
                  },
                  icon: SvgPicture.asset("assets/svg/search.svg"),
                  color: Colors.grey,
                ),
                const Text(
                  "Search",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print("taped");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    var index = 0;
                    print("taped");
                  },
                  icon: SvgPicture.asset("assets/svg/activity.svg"),
                  color: Colors.grey,
                ),
                const Text(
                  "Activity",
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print("taped");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    print("taped");
                  },
                  icon: SvgPicture.asset("assets/svg/classroom.svg"),
                  color: Colors.grey,
                ),
                const Text(
                  "Classroom",
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
