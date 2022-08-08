import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widgets/ReviewItem.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Reviews",
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
      body: ListView.separated(
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(color: Colors.grey),
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const ReviewItem(),
      ),
    );
  }
}
