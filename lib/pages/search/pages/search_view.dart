import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              right: 15,
              bottom: 30,
              left: 15,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: Constants.theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withOpacity(0.46),
                ),
                prefixIconColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 11,
                ),
                filled: true,
                fillColor: const Color(0xFF514F4F),
              ),
              cursorColor: Colors.white.withOpacity(0.4),
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset("assets/images/search_background.png"),
            ),
          )
        ],
      ),
    );
  }
}
