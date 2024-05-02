
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:islamic_app/Home/Sura_name_iteam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../hadis_datils/Hadeth_name_iteam.dart';
import '../../widgets/my_them.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class AhadisScreen extends StatefulWidget {
  @override
  State<AhadisScreen> createState() => _AhadisScreenState();
}

class _AhadisScreenState extends State<AhadisScreen> {
List<Hadeth>Ahadeeth=[];

  @override
  Widget build(BuildContext context) {

    if(Ahadeeth.isEmpty){
      LoadHadisFile();
    }
    return  Column(
      children: [
        Image.asset('assets/images/hadis_image.png',  width: double.infinity,
          fit: BoxFit.fitWidth,),
        Divider(
          color: MyThemData.goldcolor,thickness: 2,

        ),
        Text(
        AppLocalizations.of(context)!.ahadith,style: TextStyle( color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22),),
        Divider(
          color: MyThemData.goldcolor,thickness: 2,

        ),
        Expanded(
          child: Ahadeeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: MyThemData.goldcolor,
              indent: 25,
              endIndent: 25,
            ),
            itemCount: Ahadeeth.length,
            itemBuilder: (c, index) {
              return HadethNumIteam(Ahadeeth[index].title,
                  Ahadeeth[index]);
            },
          ),
        )
      ],
    );
  }

void LoadHadisFile() async {
  String content = await rootBundle.loadString('assets/hadith/ahadeth .txt');

  List<String> Allhadis = content.trim().split('#');
  for (int i = 0; i < Allhadis.length; i++) {
    String hadeth = Allhadis[i];
    List<String> Hadethlins = hadeth.trim().split('\n');

    String title = Hadethlins[0];
    Hadethlins.removeAt(0);
    Hadeth hadethdata = Hadeth(title, Hadethlins);
    Ahadeeth.add(hadethdata);
    setState(() {

    });
  }
}
}
class Hadeth{
  String title;
 List<String>  content;
  Hadeth(this.title,this.content);
}
