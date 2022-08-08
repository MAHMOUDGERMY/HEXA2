import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexa2/views/Reviews.dart';
import 'package:hexcolor/hexcolor.dart';

class CourseDetailes extends StatefulWidget {
  CourseDetailes({Key? key}) : super(key: key);

  @override
  State<CourseDetailes> createState() => _CourseDetailesState();
}

class _CourseDetailesState extends State<CourseDetailes> {
  CarouselController? controller;

  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  double pos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Course Detailes",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 70,
            height: 70,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/svg/cart-black.svg")),
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          )
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  CarouselSlider(
                    carouselController: controller,
                    options: CarouselOptions(
                      disableCenter: true,
                      height: 250,
                      onPageChanged: (reson, index) {
                        setState(() {
                          pos = reson.toDouble();
                        });
                      },
                      aspectRatio: 3,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      reverse: false,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInSine,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(20)),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DotsIndicator(
                    decorator: DotsDecorator(
                        activeColor: HexColor("#ECB7BF"),
                        color: HexColor("#ECB7BF").withOpacity(0.3)),
                    position: pos,
                    dotsCount: 3,
                    onTap: (position) {
                      setState(() {
                        controller!.animateToPage(position.toInt(),
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                        pos = position;
                      });
                    },
                  )
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Diploma Of Information Technology Networking",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                                            color: HexColor("#2EAFBE"))))
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
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              color: HexColor("#2EAFBE"),
                            ),
                            child: const Center(
                              child: Text(
                                "ADD TO CART",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
