import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';
import '../../../core/config/pages_route_name.dart';
import '../../../core/widgets/watchlist_icon_widget.dart';
import '../../../main.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/slide.png",
                    fit: BoxFit.cover,
                    width: Constants.mediaQuery.width,
                  ),
                  const Icon(
                    Icons.play_circle_fill_rounded,
                    color: Colors.white,
                    size: 70,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: InkWell(
                  onTap: () =>
                      navigatorKey.currentState!.pushNamed(PagesRouteName.movieDetails),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 140,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dora and the lost city of gold",
                              style: Constants.theme.textTheme.bodySmall
                                  ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "2019  PG-13  2h 7m",
                              style: Constants.theme.textTheme.bodySmall
                                  ?.copyWith(
                                color: const Color(0xffb5b4b4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                InkWell(
                  onTap: () =>
                      navigatorKey.currentState!.pushNamed(PagesRouteName.movieDetails),
                  child: Image.asset(
                    "assets/images/slide_movie_pic.png",
                  ),
                ),
                const WatchListIconWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
