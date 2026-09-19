
import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: Assets.images.hadithBg.provider(),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
