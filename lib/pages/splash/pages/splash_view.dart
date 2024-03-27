import 'package:flutter/material.dart';
import 'package:movies_app/core/config/pages_route_name.dart';
import 'package:movies_app/main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () => navigatorKey.currentState!
          .pushReplacementNamed(PagesRouteName.layoutView),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/movies_splash_icon.png",
              ),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
