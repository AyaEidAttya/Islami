import 'package:flutter/material.dart';
import 'package:islamic_app/hadis_datils/hadis_screen.dart';

import '../Home/Tabs/Ahadis.dart';



// ignore: must_be_immutable
class HadethNumIteam extends StatelessWidget {
  final String Name;
  Hadeth hadeth;
  HadethNumIteam(this.Name,this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,
          HadethDitels.routeName,
arguments: hadeth,
        );
      },
      child: Text(
        Name ,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          // Add more styles here if needed
        ),
      ),
    );
  }
}
