import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class NewReleasesWidget extends StatelessWidget {
  const NewReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/new_releases_pic.png",
                  width: Constants.mediaQuery.width * 0.3,
                  fit: BoxFit.cover,
                ),
              ],
            ),
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
    );
  }
}
