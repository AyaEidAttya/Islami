import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/widgets/my_them.dart';

class Sura_view extends StatefulWidget {
  static const String routName = 'Sura_view';

  @override
  State<Sura_view> createState() => _Sura_viewState();
}

class _Sura_viewState extends State<Sura_view> {
  List<String> virses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDatielsArg;
    if (virses.isEmpty) {
      loadFile(args.index);
    }

    return Stack(
      children: [
      Image.asset(
        'assets/images/backgroundimage.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        
        body: virses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: MyThemData.goldcolor,
              indent: 25,
              endIndent: 25,
            ),
            itemCount: virses.length,
            itemBuilder: (c, index) {
              return Text(
                virses[index],
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              );
            }),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    virses = lines;

    setState(() {});
  }
}

class SuraDatielsArg {
  String SuraName;
  int index;
  SuraDatielsArg(this.SuraName, this.index);
}
