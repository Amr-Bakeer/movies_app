import 'package:flutter/material.dart';
import 'package:movies_app/pages/settings_provider.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatelessWidget {

  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);

    return Scaffold(
      body: vm.screens[vm.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: vm.currentIndex,
        onTap: vm.changeIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "SEARCH",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation),
            label: "BROWSE",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark_rounded),
            label: "WATCHLIST",
          ),
        ],
      ),
    );
  }
}
