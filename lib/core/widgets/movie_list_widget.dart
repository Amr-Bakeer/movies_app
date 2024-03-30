import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/watchlist_icon_widget.dart';

import '../config/constants.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/movie_list_pic.png",
                  fit: BoxFit.cover,
                  height: Constants.mediaQuery.height * 0.1,
                ),
              ),
              const WatchListIconWidget(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alita Battle Angel",
                style: Constants.theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "2019",
                style: Constants.theme.textTheme.bodySmall
                    ?.copyWith(color: Colors.white.withOpacity(0.67)),
              ),
              Text(
                "Rosa Salazar, Christoph Walt",
                style: Constants.theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white.withOpacity(0.67),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
