import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';
import '../../../core/widgets/movie_card_widget.dart';
import '../../../core/widgets/watchlist_icon_widget.dart';
import '../widgets/movie_categories_widget.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dora and the lost city of gold",
          style: Constants.theme.textTheme.titleLarge,
        ),
      ),
      body: ListView(
        children: [
          Column(
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
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Dora and the lost city of gold",
                          style: Constants.theme.textTheme.bodySmall?.copyWith(
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
                          style: Constants.theme.textTheme.bodySmall?.copyWith(
                            color: const Color(0xffb5b4b4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: Constants.mediaQuery.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Image.asset(
                                "assets/images/slide_movie_pic.png",
                              ),
                              const WatchListIconWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              MovieCategoriesWidget(),
                              MovieCategoriesWidget(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: Constants.mediaQuery.width * 0.54,
                            child: Text(
                              "Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.",
                              style: Constants.theme.textTheme.bodySmall?.copyWith(
                                fontSize: 14
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Constants.theme.primaryColor,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7.7",
                                style: Constants.theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff282a28),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Recommended",
                        style: Constants.theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                            MovieCardWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
