import 'package:flutter/material.dart';
import 'package:islamic_app/Provider/MyProvider.dart';
import 'package:provider/provider.dart';

class ThemBottomsShow extends StatelessWidget {
  const ThemBottomsShow({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<Myprovider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changMode(ThemeMode.light);
            },
              child: themMode(context, 'Light',pro.themeMode==ThemeMode.light)),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: (){
                pro.changMode(ThemeMode.dark);
                Navigator.pop(context);

              },

              child: themMode(context, 'Dark',pro.themeMode==ThemeMode.dark)),
        ],
      ),
    );
  }
  Widget themMode(BuildContext context, String text, bool isSelected) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: isSelected
                      ? Color.fromRGBO(15, 29, 36, 1.0)
                      : Theme.of(context).primaryColorDark,
                ),
          ),
          Spacer(),
          Icon(
            Icons.done,
            color: isSelected
                ? Color.fromRGBO(15, 29, 36, 1.0)
                : Theme.of(context).primaryColorDark,
          ),
        ],
      );
}
