import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_app/Home/sura_view.dart';
import 'package:provider/provider.dart';
import 'Home/MyHomePage.dart';
import 'Provider/MyProvider.dart';
import 'hadis_datils/hadis_screen.dart';
import 'widgets/my_them.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => Myprovider(),
      child:
      MyApplcation(),

    );
  }
}

class MyApplcation extends StatelessWidget {
  const MyApplcation({super.key});

  @override
  Widget build(BuildContext context) {
    var prov =  Provider.of<Myprovider>(context);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      locale: Locale(prov.lang),
      initialRoute:MyHomePage.routName,
      routes: {
        MyHomePage.routName:(c)=>MyHomePage(),
        Sura_view.routName:(c)=>Sura_view(),
        HadethDitels.routeName:(c)=>HadethDitels(),
      },
      theme: MyThemData.LightThem,
      darkTheme: MyThemData.DarkThem,
      themeMode: prov.themeMode,
    );
  }
}
