import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/movie_pic.png",
                    width: Constants.mediaQuery.width * 0.3,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Icon(
                    Icons.bookmark,
                    color: const Color(0xff514f4f).withOpacity(0.8),
                    size: 52,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff343534),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Constants.theme.primaryColor,
                      size: 26,
                    ),
                    const Text("7.7"),
                  ],
                ),
                Text(
                  "Deadpool 2",
                  textAlign: TextAlign.start,
                  style: Constants.theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "2018 R 1h 59m",
                  textAlign: TextAlign.start,
                  style: Constants.theme.textTheme.bodySmall?.copyWith(
                    color: const Color(0xffb5b4b4),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
