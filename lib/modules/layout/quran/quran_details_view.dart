import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/quran_data_model.dart';

import '../../../core/gen/assets.gen.dart';

class QuranDetailsView extends StatefulWidget {
   const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final suraDataModel = ModalRoute.of(context)?.settings.arguments as QuranDataModel; /// Important ***

    if(verses.isEmpty) loadDataFromFiles(suraDataModel.suraNumber);
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Text(suraDataModel.suraNameEN,),
            )),
        body: Stack(children: [


          Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Assets.images.imgLeftCorner.image(width: 90,height: 90),
              Text(suraDataModel.suraNameAR,style: theme.textTheme.headlineSmall?.copyWith(color: AppColors.primary),),
              Assets.images.imgRightCorner.image(width: 90,height: 90)
              ],),),
            Spacer(),
            Assets.images.imgBottomDecoration.image()

          ],),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100.0,horizontal: 20),
            child: ListView.builder(
                itemBuilder: (context,index){
                  return Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(color: AppColors.primary,height: 1.5),);
                },
                itemCount: verses.length,),
          )
        ])

      ),
    );
  }

   List<String> verses =[];

  Future<void> loadDataFromFiles(int suraIndex) async {
    String content = await rootBundle.loadString("assets/files/quran/$suraIndex.txt");

    verses = content.split("\n");
    setState(() {

    });


  }
}
