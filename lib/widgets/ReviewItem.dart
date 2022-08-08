import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  blurStyle: BlurStyle.outer)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/close-up-young-successful-man-smiling-camera-standing-casual-outfit-against-blue-background_1258-66609.jpg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Rachelle Chouinard",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20 Jan 2020",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: HexColor("#2EAFBE"),
                      ),
                      Icon(
                        Icons.star,
                        color: HexColor("#2EAFBE"),
                      ),
                      Icon(
                        Icons.star,
                        color: HexColor("#2EAFBE"),
                      ),
                      Icon(
                        Icons.star,
                        color: HexColor("#2EAFBE"),
                      ),
                      Icon(
                        Icons.star,
                        color: HexColor("#2EAFBE"),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Use filler text where it helps your design process, but use real content if you’ve got it, as long as it doesn’t distract and slow down your design process.",
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
