import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/gen/assets.gen.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();

    /* Future.delayed(
            Duration(seconds: 2),
            ()=> Navigator.push(context, Route));
    */
    /// [ OR ]
    Timer(
      const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, AppRoutesName.layout)
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: Assets.images.splashImg.image(),
      ),

    );
  }
}
