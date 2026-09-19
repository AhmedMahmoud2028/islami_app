import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.timerBg.provider(),
              fit: BoxFit.cover
          )
      ),
    );
  }
}