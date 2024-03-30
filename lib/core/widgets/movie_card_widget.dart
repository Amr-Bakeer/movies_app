import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/widgets/watchlist_icon_widget.dart';

import '../../main.dart';
import '../config/pages_route_name.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: const BoxDecoration(
        color: Colors.red
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () =>
                    navigatorKey.currentState!.pushNamed(PagesRouteName.movieDetails),
                child: Image.asset(
                  "assets/images/movie_pic.png",
                  width: Constants.mediaQuery.width * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const WatchListIconWidget(),
            ],
          ),
          InkWell(
            onTap: () =>
                navigatorKey.currentState!.pushNamed(PagesRouteName.movieDetails),
            child: Container(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Constants.theme.primaryColor,
                        size: 25,
                      ),
                      Text(
                        "7.7",
                        style: Constants.theme.textTheme.bodySmall,
                      ),
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
          ),
        ],
      ),
    );
  }
}
