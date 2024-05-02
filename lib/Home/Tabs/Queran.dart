
import 'package:flutter/material.dart';
import 'package:islamic_app/widgets/my_them.dart';

import '../Sura_name_iteam.dart';

// ignore: must_be_immutable
class QuranScreen extends StatelessWidget {
List<String> SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/quran_main_screen.png'),
          Divider(
            color: MyThemData.goldcolor,thickness: 2,
            
          ),
          Text('اسم السوره',style: Theme.of(context).textTheme.subtitle1,),
          Divider(
            color: MyThemData.goldcolor,thickness: 2,

          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (c,index){
                return Divider(
                  color: MyThemData.goldcolor,
                  indent: 25,
                  endIndent: 25,
                );
              },
              itemCount: SuraNames.length,
            itemBuilder: (_,index){
              return SuraNameIteam('${SuraNames[index]}',index);
            },),
          )
        ],
      ),
    );
  }
}
