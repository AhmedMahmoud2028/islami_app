import 'package:flutter/material.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/main.dart';
import 'package:islami_app/modules/widgets/app_button.dart';

import '../../core/gen/assets.gen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Expanded(
        child: Column(children: [
          Center(child: Assets.images.headerImage.image()),
          Center(child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Assets.images.welcomeImage.image(),
          )),
          Text("Welcome To Islami App",style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.primary),),
          SizedBox(height: 120,),
          Row(
            children: [
              Spacer(),
              GestureDetector(onTap:(){
                navigatorKey.currentState?.pushNamed(AppRoutesName.screenTwo);
              },child: AppButton(textButton: "Next"))

            ],
          )

        ],),
      )
    );
  }
}
