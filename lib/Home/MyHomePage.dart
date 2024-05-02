import 'package:flutter/material.dart';
import 'package:islamic_app/Settings/SettingTab.dart';
import 'package:islamic_app/widgets/my_them.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Tabs/Ahadis.dart';
import 'Tabs/Queran.dart';
import 'Tabs/Radio.dart';
import 'Tabs/Sebha.dart';

class MyHomePage extends StatefulWidget {
  static const String routName = 'MyHomePage';

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Theme.of(context).brightness == Brightness.light
              ? 'assets/images/backgroundimage.png'
              : 'assets/images/backgrounddark.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),

        Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
                AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.headline1,
            )),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: curentindex,
            onTap: (index) {
              curentindex = index;
              setState(() {});
            },
            backgroundColor: MyThemData.goldcolor,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                  label: 'الراديو',
                  backgroundColor: MyThemData.goldcolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: 'السبحه',
                  backgroundColor: MyThemData.goldcolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/book.png')),
                  label: 'الاحاديث',
                  backgroundColor: MyThemData.goldcolor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/moshaf_gold.png')),
                  label: 'المصحف',
                  backgroundColor: MyThemData.goldcolor),
              BottomNavigationBarItem(
                  icon:Icon( Icons.settings),
                  label: 'الاعدادات',
                  backgroundColor: MyThemData.goldcolor),
            ],
          ),

          body: tabs[curentindex],
        ),
      ],
    );
  }
}

List<Widget> tabs = [
  RadioScreen(),
  SebhaScreen(),
  AhadisScreen(),
  QuranScreen(),
  SettingsTap(),
];

