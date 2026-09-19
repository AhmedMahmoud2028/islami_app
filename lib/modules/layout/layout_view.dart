import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/modules/layout/hadith/hadith_view.dart';
import 'package:islami_app/modules/layout/quran/quran_view.dart';
import 'package:islami_app/modules/layout/radio/radio_view.dart';
import 'package:islami_app/modules/layout/tasbeeh/tasbeeh_view.dart';
import 'package:islami_app/modules/layout/timer/timer_view.dart';

import '../../core/gen/assets.gen.dart';
//import 'package:islami_app/core/theme/app_colors.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
int _selectedIndex = 0;
final List<Widget> _pages =[
  QuranView(),
  HadithView(),
  TasbeehView(),
  RadioView(),
  TimerView()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index)
        {
          _selectedIndex = index;
          setState(() {});
        },
          items: [
        BottomNavigationBarItem(
            label:"Quran",
            icon: Assets.icons.quran.svg(width: 20,height: 20,
                  colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),

            activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                            color: AppColors.black.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(20)
                  ),
                child: Assets.icons.quran.svg(width: 20,height: 20,))),
        BottomNavigationBarItem(
            label:"Hadith",
            icon:  Assets.icons.hadith.svg(width: 20,height: 20,
                   colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
            activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Assets.icons.hadith.svg(width: 20,height: 20,))),
        BottomNavigationBarItem(
            label:"Tasbeeh",
            icon: Assets.icons.tasbeh.svg(width: 20,height: 20,
                  colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
            activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Assets.icons.tasbeh.svg(width: 20,height: 20,))),
        BottomNavigationBarItem(
            label:"Radio",
            icon: Assets.icons.radio.svg(width: 20,height: 20,
                  colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
            activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Assets.icons.radio.svg(width: 20,height: 20,))),
        BottomNavigationBarItem(
            label:"Timer",
            icon: Assets.icons.timer.svg(width: 20,height: 20,
                  colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
            activeIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: AppColors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Assets.icons.timer.svg(width: 20,height: 20,))),
      ]),
    );
  }
}
