import 'package:flutter/material.dart';
import '../../../core/config/constants.dart';
import '../../../core/widgets/movie_list_widget.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 80,
                right: 20,
                bottom: 20,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Watchlist",
                    style: Constants.theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MovieListWidget(),
                  const SizedBox(
                    height: 15,
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
