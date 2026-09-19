import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/radio_data_model.dart';
import 'package:islami_app/modules/layout/radio/list_views/radio_list_view.dart';
import 'package:islami_app/modules/layout/radio/list_views/reciters_list_view.dart';
import '../../../core/gen/assets.gen.dart';

List<RadioDataModel> radioModel = [
  RadioDataModel(radioStationName: "Radio Ibrahim Al-Akdar",reciterName: "Ibrahim Al-Akdar"),
  RadioDataModel(radioStationName: "Radio Al-Qaria Yassen",reciterName: "Akram Alalaqmi"),
  RadioDataModel(radioStationName: "Radio Ahmed Al-trabulsi",reciterName: "Majed Al-Enezi"),
  RadioDataModel(radioStationName: "Radio Addokali Mohammad Alalim",reciterName: "Malik shaibat Alhamed"),
];

class RadioView extends StatefulWidget {

  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.radioBg.provider(),
              fit: BoxFit.cover
          )
      ),
      child: Column(children: [
        Assets.images.headerImage.image(),
        SizedBox(height: 27,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              GestureDetector(onTap:(){
                setState(() {
                 if(isSelected = true) return;
                 isSelected = !isSelected;

                });
              }, child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: isSelected? AppColors.primary : Color.fromRGBO(32, 32, 32, 0.7)
                  ),
                  child: Center(child: Text("Radio",style: theme.textTheme.bodyLarge,)),
                ),
              ),

              GestureDetector(onTap: (){
                setState(() {
                  isSelected = !isSelected;
                  if(isSelected = false) return;
                });
              }, child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: isSelected? Color.fromRGBO(32, 32, 32, 0.7): AppColors.primary
                  ),
                  child: Center(child: Text("Reciters",style: theme.textTheme.bodyLarge,))
                ),
              )
            ],),
        ),

        SizedBox(height: 5,),

        isSelected?
        Expanded(
          child: ListView.separated(
              itemBuilder: (context,index){
                return RadioListView(radioDataModel: radioModel[index]);
              },
              separatorBuilder: (context,index){
                return SizedBox(height: 16,);
              },
              itemCount: radioModel.length),)
        :
        Expanded(
              child: ListView.separated(
              itemBuilder: (context,index){
                return RecitersListView(radioDataModel: radioModel[index]);
              },
              separatorBuilder: (context,index){
                return SizedBox(height: 16,);
              },
              itemCount: radioModel.length),
        )
    ])


    );
  }
}