import 'package:flutter/material.dart';
import 'package:islamic_app/Provider/MyProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomsShow extends StatelessWidget {
  const LanguageBottomsShow({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<Myprovider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changlang('en'); Navigator.pop(context);
            },
              child: LangIteam(context, 'English', pro.lang=='en')),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: (){
                pro.changlang('ar');
                Navigator.pop(context);

              },

              child: LangIteam(context, 'Arabic', pro.lang=='ar')),
        ],
      ),
    );
  }
  Widget LangIteam(BuildContext context, String text, bool isSelected) => Row(
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
