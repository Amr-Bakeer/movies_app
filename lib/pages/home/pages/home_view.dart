import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';
import 'package:movies_app/network/api_manager.dart';
import '../../../core/widgets/movie_card_widget.dart';
import '../widgets/new_releases_widget.dart';
import '../widgets/slide_widget.dart';

class HomeView extends StatelessWidget {


  List<Widget> lastMovies = [
    const SlideWidget(),
  ];



  HomeView({
    super.key,
    required this.lastMovies,
  });

  @override
  Widget build(BuildContext context) {
    ApiManager.fetchPopularData();

    return Scaffold(
      body: Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: Constants.mediaQuery.height * 0.36,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      viewportFraction: 1,

                    ),
                    items: lastMovies,
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
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
