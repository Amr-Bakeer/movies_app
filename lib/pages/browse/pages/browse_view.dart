import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import '../../../core/widgets/category_widget.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              "Browse Category",
              style: Constants.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: 3/2,
                ),
                itemBuilder: (context, index) =>  const CategoryWidget(),
                itemCount: 12,
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}
