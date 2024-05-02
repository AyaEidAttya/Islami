import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/MyProvider.dart';
import 'Show_Them_bottom.dart';
import 'Show_language_bottom.dart';

class SettingsTap extends StatelessWidget {
  const SettingsTap({super.key});

  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<Myprovider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text(prov.lang=='en'?'English':'Arabic')),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Text(
            'Them',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showThemBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text(prov.themeMode==ThemeMode.light?'Light':'Dark')),
            ),
          ),
        ],
      ),
    );
  }
void  showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (c){
      return LanguageBottomsShow();

    });
}
  void  showThemBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (c){
      return ThemBottomsShow();

    });
  }

}
