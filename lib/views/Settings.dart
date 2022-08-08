import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/password-settings.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Change Password",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/language.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Language",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Text(
                          "English",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/about.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "About Us",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/contact.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/faq.svg"),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Faq's",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/privacy.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/svg/terms.svg"),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              color: HexColor("#717171"),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        SvgPicture.asset("assets/svg/Shape.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
