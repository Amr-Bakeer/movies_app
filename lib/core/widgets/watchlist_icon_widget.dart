import 'package:flutter/material.dart';

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
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
    );
  }
}
