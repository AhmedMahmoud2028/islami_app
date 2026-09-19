import 'package:flutter/material.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/main.dart';
import 'package:islami_app/modules/widgets/app_button.dart';

import '../../core/gen/assets.gen.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

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
              child: Assets.images.mosqueImage.image(),
            )),
            Center(child: Text("Welcome To Islami App",style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.primary),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 12),
              child:  Text("We Are Very Excited To Have You In Our \n                       Community",style: theme.textTheme.titleLarge?.copyWith(color: AppColors.primary,fontSize: 18),),
            ),
              SizedBox(height: 50,),
              Row(children: [
               GestureDetector(onTap:(){
                 navigatorKey.currentState?.pop();
               },child: AppButton(textButton: "Back")),
               Spacer(),
               GestureDetector(onTap:(){
                 navigatorKey.currentState?.pushNamed(AppRoutesName.screenThree);
               },child: AppButton(textButton: "Next"))
              ],)

          ],),
        )
    );
  }
}
