import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class MovieCategoriesWidget extends StatelessWidget {
  const MovieCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFF514F4F),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          "Action",
          style: Constants.theme.textTheme.bodySmall,
        ),
      ),
    );
  }
}
