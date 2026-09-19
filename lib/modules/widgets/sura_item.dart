import 'package:flutter/material.dart';
import 'package:islami_app/models/quran_data_model.dart';

import '../../core/gen/assets.gen.dart';

class SuraItem extends StatelessWidget {

  final QuranDataModel suraDataModel;
  final void Function()? onTap;
  const SuraItem({super.key,
    required this.onTap,
    required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent, /// It's very Important to Active click on any Area of button ***
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
            image: DecorationImage(image: Assets.images.imgSurNumberFrame.provider()))
            ,child: Text(suraDataModel.suraNumber.toString(),style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white,fontSize: 12),),),
            SizedBox(width: 24,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(suraDataModel.suraNameEN,style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),),
                Text("${suraDataModel.numberOfVerses} Verses",style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),)
              ],),
            Spacer(),
            Text(suraDataModel.suraNameAR,style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),)

          ],
        ),
      ),
    );
  }
}
