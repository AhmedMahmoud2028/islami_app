import 'package:flutter/material.dart';
import 'package:islami_app/core/gen/assets.gen.dart';
import 'package:islami_app/core/routes/app_routes_name.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/main.dart';
import 'package:islami_app/modules/widgets/sura_item.dart';

import '../../../models/quran_data_model.dart';

List<QuranDataModel> quranSuraList = [
  QuranDataModel(suraNameEN: 'Al-Fatiha', suraNameAR: 'الفاتحه', numberOfVerses: 7, suraNumber: 1),
  QuranDataModel(suraNameEN: 'Al-Baqarah', suraNameAR: 'البقرة', numberOfVerses: 286, suraNumber: 2),
  QuranDataModel(suraNameEN: 'Aal-E-Imran', suraNameAR: 'آل عمران', numberOfVerses: 200, suraNumber: 3),
  QuranDataModel(suraNameEN: 'An-Nisa\'', suraNameAR: 'النساء', numberOfVerses: 176, suraNumber: 4),
  QuranDataModel(suraNameEN: 'Al-Ma\'idah', suraNameAR: 'المائدة', numberOfVerses: 120, suraNumber: 5),
  QuranDataModel(suraNameEN: 'Al-An\'am', suraNameAR: 'الأنعام', numberOfVerses: 165, suraNumber: 6),
  QuranDataModel(suraNameEN: 'Al-A\'raf', suraNameAR: 'الأعراف', numberOfVerses: 206, suraNumber: 7),
  QuranDataModel(suraNameEN: 'Al-Anfal', suraNameAR: 'الأنفال', numberOfVerses: 75, suraNumber: 8),
  QuranDataModel(suraNameEN: 'At-Tawbah', suraNameAR: 'التوبة', numberOfVerses: 129, suraNumber: 9),
  QuranDataModel(suraNameEN: 'Yunus', suraNameAR: 'يونس', numberOfVerses: 109, suraNumber: 10),
  QuranDataModel(suraNameEN: 'Hud', suraNameAR: 'هود', numberOfVerses: 123, suraNumber: 11),
  QuranDataModel(suraNameEN: 'Yusuf', suraNameAR: 'يوسف', numberOfVerses: 111, suraNumber: 12),
  QuranDataModel(suraNameEN: 'Ar-Ra\'d', suraNameAR: 'الرعد', numberOfVerses: 43, suraNumber: 13),
  QuranDataModel(suraNameEN: 'Ibrahim', suraNameAR: 'إبراهيم', numberOfVerses: 52, suraNumber: 14),
  QuranDataModel(suraNameEN: 'Al-Hijr', suraNameAR: 'الحجر', numberOfVerses: 99, suraNumber: 15),
  QuranDataModel(suraNameEN: 'An-Nahl', suraNameAR: 'النحل', numberOfVerses: 128, suraNumber: 16),
  QuranDataModel(suraNameEN: 'Al-Isra', suraNameAR: 'الإسراء', numberOfVerses: 111, suraNumber: 17),
  QuranDataModel(suraNameEN: 'Al-Kahf', suraNameAR: 'الكهف', numberOfVerses: 110, suraNumber: 18),
  QuranDataModel(suraNameEN: 'Maryam', suraNameAR: 'مريم', numberOfVerses: 98, suraNumber: 19),
  QuranDataModel(suraNameEN: 'Ta-Ha', suraNameAR: 'طه', numberOfVerses: 135, suraNumber: 20),
  QuranDataModel(suraNameEN: 'Al-Anbiya', suraNameAR: 'الأنبياء', numberOfVerses: 112, suraNumber: 21),
  QuranDataModel(suraNameEN: 'Al-Hajj', suraNameAR: 'الحج', numberOfVerses: 78, suraNumber: 22),
  QuranDataModel(suraNameEN: 'Al-Mu\'minun', suraNameAR: 'المؤمنون', numberOfVerses: 118, suraNumber: 23),
  QuranDataModel(suraNameEN: 'An-Nur', suraNameAR: 'النّور', numberOfVerses: 64, suraNumber: 24),
  QuranDataModel(suraNameEN: 'Al-Furqan', suraNameAR: 'الفرقان', numberOfVerses: 77, suraNumber: 25),
  QuranDataModel(suraNameEN: 'Ash-Shu\'ara', suraNameAR: 'الشعراء', numberOfVerses: 227, suraNumber: 26),
  QuranDataModel(suraNameEN: 'An-Naml', suraNameAR: 'النّمل', numberOfVerses: 93, suraNumber: 27),
  QuranDataModel(suraNameEN: 'Al-Qasas', suraNameAR: 'القصص', numberOfVerses: 88, suraNumber: 28),
  QuranDataModel(suraNameEN: 'Al-Ankabut', suraNameAR: 'العنكبوت', numberOfVerses: 69, suraNumber: 29),
  QuranDataModel(suraNameEN: 'Ar-Rum', suraNameAR: 'الرّوم', numberOfVerses: 60, suraNumber: 30),
  QuranDataModel(suraNameEN: 'Luqman', suraNameAR: 'لقمان', numberOfVerses: 34, suraNumber: 31),
  QuranDataModel(suraNameEN: 'As-Sajda', suraNameAR: 'السجدة', numberOfVerses: 30, suraNumber: 32),
  QuranDataModel(suraNameEN: 'Al-Ahzab', suraNameAR: 'الأحزاب', numberOfVerses: 73, suraNumber: 33),
  QuranDataModel(suraNameEN: 'Saba', suraNameAR: 'سبأ', numberOfVerses: 54, suraNumber: 34),
  QuranDataModel(suraNameEN: 'Fatir', suraNameAR: 'فاطر', numberOfVerses: 45, suraNumber: 35),
  QuranDataModel(suraNameEN: 'Ya-Sin', suraNameAR: 'يس', numberOfVerses: 83, suraNumber: 36),
  QuranDataModel(suraNameEN: 'As-Saffat', suraNameAR: 'الصافات', numberOfVerses: 182, suraNumber: 37),
  QuranDataModel(suraNameEN: 'Sad', suraNameAR: 'ص', numberOfVerses: 88, suraNumber: 38),
  QuranDataModel(suraNameEN: 'Az-Zumar', suraNameAR: 'الزمر', numberOfVerses: 75, suraNumber: 39),
  QuranDataModel(suraNameEN: 'Ghafir', suraNameAR: 'غافر', numberOfVerses: 85, suraNumber: 40),
  QuranDataModel(suraNameEN: 'Fussilat', suraNameAR: 'فصّلت', numberOfVerses: 54, suraNumber: 41),
  QuranDataModel(suraNameEN: 'Ash-Shura', suraNameAR: 'الشورى', numberOfVerses: 53, suraNumber: 42),
  QuranDataModel(suraNameEN: 'Az-Zukhruf', suraNameAR: 'الزخرف', numberOfVerses: 89, suraNumber: 43),
  QuranDataModel(suraNameEN: 'Ad-Dukhan', suraNameAR: 'الدّخان', numberOfVerses: 59, suraNumber: 44),
  QuranDataModel(suraNameEN: 'Al-Jathiya', suraNameAR: 'الجاثية', numberOfVerses: 37, suraNumber: 45),
  QuranDataModel(suraNameEN: 'Al-Ahqaf', suraNameAR: 'الأحقاف', numberOfVerses: 35, suraNumber: 46),
  QuranDataModel(suraNameEN: 'Muhammad', suraNameAR: 'محمد', numberOfVerses: 38, suraNumber: 47),
  QuranDataModel(suraNameEN: 'Al-Fath', suraNameAR: 'الفتح', numberOfVerses: 29, suraNumber: 48),
  QuranDataModel(suraNameEN: 'Al-Hujurat', suraNameAR: 'الحجرات', numberOfVerses: 18, suraNumber: 49),
  QuranDataModel(suraNameEN: 'Qaf', suraNameAR: 'ق', numberOfVerses: 45, suraNumber: 50),
  QuranDataModel(suraNameEN: 'Adh-Dhariyat', suraNameAR: 'الذاريات', numberOfVerses: 60, suraNumber: 51),
  QuranDataModel(suraNameEN: 'At-Tur', suraNameAR: 'الطور', numberOfVerses: 49, suraNumber: 52),
  QuranDataModel(suraNameEN: 'An-Najm', suraNameAR: 'النجم', numberOfVerses: 62, suraNumber: 53),
  QuranDataModel(suraNameEN: 'Al-Qamar', suraNameAR: 'القمر', numberOfVerses: 55, suraNumber: 54),
  QuranDataModel(suraNameEN: 'Ar-Rahman', suraNameAR: 'الرحمن', numberOfVerses: 78, suraNumber: 55),
  QuranDataModel(suraNameEN: 'Al-Waqi\'a', suraNameAR: 'الواقعة', numberOfVerses: 96, suraNumber: 56),
  QuranDataModel(suraNameEN: 'Al-Hadid', suraNameAR: 'الحديد', numberOfVerses: 29, suraNumber: 57),
  QuranDataModel(suraNameEN: 'Al-Mujadila', suraNameAR: 'المجادلة', numberOfVerses: 22, suraNumber: 58),
  QuranDataModel(suraNameEN: 'Al-Hashr', suraNameAR: 'الحشر', numberOfVerses: 24, suraNumber: 59),
  QuranDataModel(suraNameEN: 'Al-Mumtahina', suraNameAR: 'الممتحنة', numberOfVerses: 13, suraNumber: 60),
  QuranDataModel(suraNameEN: 'As-Saff', suraNameAR: 'الصف', numberOfVerses: 14, suraNumber: 61),
  QuranDataModel(suraNameEN: 'Al-Jumu\'a', suraNameAR: 'الجمعة', numberOfVerses: 11, suraNumber: 62),
  QuranDataModel(suraNameEN: 'Al-Munafiqun', suraNameAR: 'المنافقون', numberOfVerses: 11, suraNumber: 63),
  QuranDataModel(suraNameEN: 'At-Taghabun', suraNameAR: 'التغابن', numberOfVerses: 18, suraNumber: 64),
  QuranDataModel(suraNameEN: 'At-Talaq', suraNameAR: 'الطلاق', numberOfVerses: 12, suraNumber: 65),
  QuranDataModel(suraNameEN: 'At-Tahrim', suraNameAR: 'التحريم', numberOfVerses: 12, suraNumber: 66),
  QuranDataModel(suraNameEN: 'Al-Mulk', suraNameAR: 'الملك', numberOfVerses: 30, suraNumber: 67),
  QuranDataModel(suraNameEN: 'Al-Qalam', suraNameAR: 'القلم', numberOfVerses: 52, suraNumber: 68),
  QuranDataModel(suraNameEN: 'Al-Haqqah', suraNameAR: 'الحاقة', numberOfVerses: 52, suraNumber: 69),
  QuranDataModel(suraNameEN: 'Al-Ma\'arij', suraNameAR: 'المعارج', numberOfVerses: 44, suraNumber: 70),
  QuranDataModel(suraNameEN: 'Nuh', suraNameAR: 'نوح', numberOfVerses: 28, suraNumber: 71),
  QuranDataModel(suraNameEN: 'Al-Jinn', suraNameAR: 'الجن', numberOfVerses: 28, suraNumber: 72),
  QuranDataModel(suraNameEN: 'Al-Muzzammil', suraNameAR: 'المزّمّل', numberOfVerses: 20, suraNumber: 73),
  QuranDataModel(suraNameEN: 'Al-Muddathir', suraNameAR: 'المدّثر', numberOfVerses: 56, suraNumber: 74),
  QuranDataModel(suraNameEN: 'Al-Qiyamah', suraNameAR: 'القيامة', numberOfVerses: 40, suraNumber: 75),
  QuranDataModel(suraNameEN: 'Al-Insan', suraNameAR: 'الإنسان', numberOfVerses: 31, suraNumber: 76),
  QuranDataModel(suraNameEN: 'Al-Mursalat', suraNameAR: 'المرسلات', numberOfVerses: 50, suraNumber: 77),
  QuranDataModel(suraNameEN: 'An-Naba\'', suraNameAR: 'النبأ', numberOfVerses: 40, suraNumber: 78),
  QuranDataModel(suraNameEN: 'An-Nazi\'at', suraNameAR: 'النازعات', numberOfVerses: 46, suraNumber: 79),
  QuranDataModel(suraNameEN: 'Abasa', suraNameAR: 'عبس', numberOfVerses: 42, suraNumber: 80),
  QuranDataModel(suraNameEN: 'At-Takwir', suraNameAR: 'التكوير', numberOfVerses: 29, suraNumber: 81),
  QuranDataModel(suraNameEN: 'Al-Infitar', suraNameAR: 'الإنفطار', numberOfVerses: 19, suraNumber: 82),
  QuranDataModel(suraNameEN: 'Al-Mutaffifin', suraNameAR: 'المطفّفين', numberOfVerses: 36, suraNumber: 83),
  QuranDataModel(suraNameEN: 'Al-Inshiqaq', suraNameAR: 'الإنشقاق', numberOfVerses: 25, suraNumber: 84),
  QuranDataModel(suraNameEN: 'Al-Buruj', suraNameAR: 'البروج', numberOfVerses: 22, suraNumber: 85),
  QuranDataModel(suraNameEN: 'At-Tariq', suraNameAR: 'الطارق', numberOfVerses: 17, suraNumber: 86),
  QuranDataModel(suraNameEN: 'Al-A\'la', suraNameAR: 'الأعلى', numberOfVerses: 19, suraNumber: 87),
  QuranDataModel(suraNameEN: 'Al-Ghashiyah', suraNameAR: 'الغاشية', numberOfVerses: 26, suraNumber: 88),
  QuranDataModel(suraNameEN: 'Al-Fajr', suraNameAR: 'الفجر', numberOfVerses: 30, suraNumber: 89),
  QuranDataModel(suraNameEN: 'Al-Balad', suraNameAR: 'البلد', numberOfVerses: 20, suraNumber: 90),
  QuranDataModel(suraNameEN: 'Ash-Shams', suraNameAR: 'الشمس', numberOfVerses: 15, suraNumber: 91),
  QuranDataModel(suraNameEN: 'Al-Lail', suraNameAR: 'الليل', numberOfVerses: 21, suraNumber: 92),
  QuranDataModel(suraNameEN: 'Ad-Duha', suraNameAR: 'الضحى', numberOfVerses: 11, suraNumber: 93),
  QuranDataModel(suraNameEN: 'Ash-Sharh', suraNameAR: 'الشرح', numberOfVerses: 8, suraNumber: 94),
  QuranDataModel(suraNameEN: 'At-Tin', suraNameAR: 'التين', numberOfVerses: 5, suraNumber: 95),
  QuranDataModel(suraNameEN: 'Al-Alaq', suraNameAR: 'العلق', numberOfVerses: 19, suraNumber: 96),
  QuranDataModel(suraNameEN: 'Al-Qadr', suraNameAR: 'القدر', numberOfVerses: 5, suraNumber: 97),
  QuranDataModel(suraNameEN: 'Al-Bayyina', suraNameAR: 'البينة', numberOfVerses: 8, suraNumber: 98),
  QuranDataModel(suraNameEN: 'Az-Zalzalah', suraNameAR: 'الزلزلة', numberOfVerses: 8, suraNumber: 99),
  QuranDataModel(suraNameEN: 'Al-Adiyat', suraNameAR: 'العاديات', numberOfVerses: 11, suraNumber: 100),
  QuranDataModel(suraNameEN: 'Al-Qari\'a', suraNameAR: 'القارعة', numberOfVerses: 11, suraNumber: 101),
  QuranDataModel(suraNameEN: 'At-Takathur', suraNameAR: 'التكاثر', numberOfVerses: 8, suraNumber: 102),
  QuranDataModel(suraNameEN: 'Al-Asr', suraNameAR: 'العصر', numberOfVerses: 3, suraNumber: 103),
  QuranDataModel(suraNameEN: 'Al-Humazah', suraNameAR: 'الهمزة', numberOfVerses: 9, suraNumber: 104),
  QuranDataModel(suraNameEN: 'Al-Fil', suraNameAR: 'الفيل', numberOfVerses: 5, suraNumber: 105),
  QuranDataModel(suraNameEN: 'Quraysh', suraNameAR: 'قريش', numberOfVerses: 4, suraNumber: 106),
  QuranDataModel(suraNameEN: 'Al-Ma\'un', suraNameAR: 'الماعون', numberOfVerses: 6, suraNumber: 107),
  QuranDataModel(suraNameEN: 'Al-Kawthar', suraNameAR: 'الكوثر', numberOfVerses: 3, suraNumber: 108),
  QuranDataModel(suraNameEN: 'Al-Kafirun', suraNameAR: 'الكافرون', numberOfVerses: 6, suraNumber: 109),
  QuranDataModel(suraNameEN: 'An-Nasr', suraNameAR: 'النصر', numberOfVerses: 3, suraNumber: 110),
  QuranDataModel(suraNameEN: 'Al-Masad', suraNameAR: 'المسد', numberOfVerses: 5, suraNumber: 111),
  QuranDataModel(suraNameEN: 'Al-Ikhlas', suraNameAR: 'الإخلاص', numberOfVerses: 4, suraNumber: 112),
  QuranDataModel(suraNameEN: 'Al-Falaq', suraNameAR: 'الفلق', numberOfVerses: 5, suraNumber: 113),
  QuranDataModel(suraNameEN: 'An-Nas', suraNameAR: 'الناس', numberOfVerses: 6, suraNumber: 114),
];


class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: Assets.images.quranBg.provider(),
                fit: BoxFit.cover
            )
        ),
      child: SingleChildScrollView(

        /// We should delete any "Expanded" in UI because it is scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Assets.images.headerImage.image(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorColor: AppColors.primary,
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: theme.textTheme.bodyLarge,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: AppColors.primary,
                    )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColors.primary,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1,
                        color: AppColors.primary,
                  )),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Assets.icons.quran.svg(
                      colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn)
                    ),
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Most Recently",style: theme.textTheme.bodyLarge,textAlign: TextAlign.start,),
            ),
              SizedBox(height: 10,),

            /// Very Important ***
            /// You Should use "SizedBox" with Height
            /// When you need create (horizontal) ListView to show it.
              SizedBox(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context,index){
                      return Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                              Text("Al-Fatiha",style: theme.textTheme.headlineSmall,),
                              Text("الفاتحة",style: theme.textTheme.headlineSmall,),
                              Text("7 Verses  ",style: theme.textTheme.bodyMedium,),

                            ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Assets.images.imgMostRecent.image(),
                          )

                        ],),
                      );
                    },
                    separatorBuilder: (context,index){
                      return SizedBox(width: 10,);
                    },
                    itemCount: 4),
              ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Text("Sura List",style: theme.textTheme.bodyLarge,textAlign: TextAlign.start,),
            ),
            SizedBox(height: 10,),

            /// Very Important ***
            /// You Should use "Expanded" with (vertical) ListView to show it.
            //Expanded()
              ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  /// "shrinkWrap" this parameter build all element in ListView
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return SuraItem(
                        onTap: (){
                            navigatorKey.currentState?.pushNamed(AppRoutesName.quran,arguments: quranSuraList[index]); },
                        suraDataModel: quranSuraList[index]);
                  },
                  separatorBuilder: (context,index){
                    return Divider(indent: 40,endIndent: 40,);
                  }, itemCount: 114),



          ],
        ),
      ),



    );
  }
}