import 'package:flutter/material.dart';

import 'sura_view.dart';

class SuraNameIteam extends StatelessWidget {
  final String suraName;
  final int index;

  SuraNameIteam(this.suraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Sura_view.routName,
          arguments: SuraDatielsArg(suraName, index),
        );
      },
      child: Text(
        suraName,

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
