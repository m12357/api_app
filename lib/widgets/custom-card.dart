import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(clipBehavior: Clip.none, children: [
      Positioned(right: 32, top: -65, child: Image.network("src")),
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 0,
              offset: const Offset(10, 10))
        ]),
        child: const Card(
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "data",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r"$225",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
