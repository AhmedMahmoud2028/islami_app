import 'package:flutter/material.dart';
import 'package:islami_app/core/routes/app_routes.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';
import 'package:islami_app/core/theme/app_theme_manager.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: AppThemeManager.getThemeData(),
    initialRoute: AppRoutesName.initial,
    /// map
    routes: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
    navigatorKey: navigatorKey,
    );
  }
}

