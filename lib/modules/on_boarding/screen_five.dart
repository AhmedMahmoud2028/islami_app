import 'package:flutter/material.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/main.dart';
import 'package:islami_app/modules/widgets/app_button.dart';

import '../../core/gen/assets.gen.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Assets.images.headerImage.image()),
              Center(child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Assets.images.radioImage.image(),
              )),
              Center(child: Text("Holy Quran Radio",style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.primary),)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 12),
                child:  Center(child: Text("   You can listen to the Holy Quran Radio\n through the application for free and easily",style: theme.textTheme.titleLarge?.copyWith(color: AppColors.primary,fontSize: 18),)),
              ),
              SizedBox(height: 50,),
              Row(children: [
                GestureDetector(onTap:(){
                  navigatorKey.currentState?.pop();
                },child: AppButton(textButton: "Back")),
                Spacer(),
                GestureDetector(onTap:(){
                  navigatorKey.currentState?.pushNamed(AppRoutesName.layout);
                },child: AppButton(textButton: "Finish"))
              ],)

            ],),
        )
    );
  }
}
