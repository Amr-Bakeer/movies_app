import 'package:flutter/material.dart';
import 'package:movies_app/core/config/application_theme_manager.dart';
import 'package:movies_app/core/config/pages_route_name.dart';
import 'package:movies_app/core/config/routes.dart';
import 'package:movies_app/pages/settings_provider.dart';
import 'package:provider/provider.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.applicationThemeData,
      themeMode: ThemeMode.dark,
      navigatorKey: navigatorKey,
      initialRoute: PagesRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
    );
  }
}
