import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class AppButton extends StatelessWidget {

  final String textButton;

  const AppButton({super.key, required this.textButton});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child:  Text(textButton,style: theme.textTheme.titleLarge?.copyWith(fontSize: 16,color: AppColors.primary),)
    );
  }
}
