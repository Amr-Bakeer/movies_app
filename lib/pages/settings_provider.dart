import 'package:flutter/material.dart';
import 'package:movies_app/pages/browse/pages/browse_view.dart';
import 'package:movies_app/pages/home/pages/home_view.dart';
import 'package:movies_app/pages/search/pages/search_view.dart';
import 'package:movies_app/pages/watchlist/pages/watchlist_view.dart';

class SettingsProvider extends ChangeNotifier {

  int currentIndex = 0;
  List<Widget> screens = [
    const HomeView(),
    const SearchView(),
    const BrowseView(),
    const WatchlistView(),
  ];

  changeIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

}