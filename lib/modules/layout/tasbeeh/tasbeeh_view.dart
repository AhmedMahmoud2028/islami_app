import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import '../../../core/gen/assets.gen.dart';


class TasbeehView extends StatefulWidget {

  const TasbeehView({super.key});

  @override
  State<TasbeehView> createState() => _TasbeehViewState();
}

class _TasbeehViewState extends State<TasbeehView> {
  double angle = 0;
  int counter = 33;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.tasbeehBg.provider(),
              fit: BoxFit.cover
          )
      ),
      child: Column(
        spacing: 16,
        children: [
        Assets.images.headerImage.image(),
        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.white,fontSize: 32),),
        SizedBox(height: 40,),
        
          Stack(children: [

            Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(onTap: (){
                  setState(() {
                    if (counter == 1) return;
                    angle = angle + 20;
                    counter = counter - 1;
                  });
                },child: Transform.rotate(
                  angle: angle,
                  child: Container(
                    width: 380,
                    height: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: Assets.images.sebhaBody.provider(),)
                    ),
                  ),),)),
            
            Column(

              children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Text("سبحان الله",style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.white,fontSize: 32),),
              )),

              SizedBox(height: 12),

              Center(child: Text(counter.toString(),style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.white,fontSize: 32),),
                )
            ],)
            
            
            
          ],)
          
          
          



      ],),
    );
  }
}