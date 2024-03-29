import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_name.dart';
import 'package:movies_app/pages/browse/pages/browse_view.dart';
import 'package:movies_app/pages/home/pages/home_view.dart';
import 'package:movies_app/pages/home/pages/movie_details.dart';
import 'package:movies_app/pages/layout_view.dart';
import 'package:movies_app/pages/search/pages/search_view.dart';
import 'package:movies_app/pages/splash/pages/splash_view.dart';
import 'package:movies_app/pages/watchlist/pages/watchlist_view.dart';

class Routes {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {

    switch (settings.name) {
      case PagesRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PagesRouteName.layoutView:
        return MaterialPageRoute(
          builder: (context) => const LayoutView(),
          settings: settings,
        );

      // case PagesRouteName.homeView:
      //   return MaterialPageRoute(
      //     builder: (context) => const HomeView(),
      //     settings: settings,
      //   );
      //
      // case PagesRouteName.searchView:
      //   return MaterialPageRoute(
      //     builder: (context) => const SearchView(),
      //     settings: settings,
      //   );
      //
      // case PagesRouteName.browseView:
      //   return MaterialPageRoute(
      //     builder: (context) => const BrowseView(),
      //     settings: settings,
      //   );
      //
      // case PagesRouteName.watchlistView:
      //   return MaterialPageRoute(
      //     builder: (context) => const WatchlistView(),
      //     settings: settings,
      //   );

      case PagesRouteName.movieDetails:
        return MaterialPageRoute(
          builder: (context) => const MovieDetails(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
