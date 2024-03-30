import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/pages_route_name.dart';
import 'package:movies_app/main.dart';

import '../../../core/widgets/watchlist_icon_widget.dart';

class NewReleasesWidget extends StatelessWidget {
  const NewReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      child: Stack(
        children: [
          InkWell(
            onTap: () =>
                navigatorKey.currentState!.pushNamed(PagesRouteName.movieDetails),
            child: Container(
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
          ),
          const WatchListIconWidget(),
        ],
      ),
    );
  }
}
