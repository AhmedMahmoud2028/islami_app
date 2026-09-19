import 'package:flutter/material.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../models/radio_data_model.dart';


class RadioListView extends StatelessWidget {
  final RadioDataModel radioDataModel;
  const RadioListView({super.key, required this.radioDataModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 135,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(children: [

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: Assets.images.imgBottomDecoration.provider(),
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.srcIn),
                  alignment: Alignment.bottomCenter,
                )
            )
            ,),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Text(radioDataModel.radioStationName,style: theme.textTheme.titleLarge,)),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45,),
                  Assets.icons.playIcon.svg(),
                  Assets.icons.volumeHighIcon.svg()
                ],)
            ],)

        ],),
      ),
    );
  }
}


