import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import '../../../core/widgets/movie_card_widget.dart';
import '../widgets/new_releases_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Image.asset(
                            "assets/images/slide_movie_pic.png",
                          ),
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: const Color(0xff514f4f).withOpacity(0.8),
                                size: 55,
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
                    ),
                  ],
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
                          "New Releases",
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
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
                              NewReleasesWidget(),
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

              ],
            ),
          ],
        ),
      ),
    );
  }
}
