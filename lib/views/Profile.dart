import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexa2/views/Settings.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/BooxTool.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "My Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              iconSize: 10,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Settings())));
              },
              icon: SvgPicture.asset(
                "assets/svg/edit.svg",
              ),
            ),
          ],
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
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "upload/change photo".toUpperCase(),
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#4A3336")),
              ),
              const SizedBox(
                height: 20,
              ),
              BoxTools()
            ],
          ),
        ));
  }
}
