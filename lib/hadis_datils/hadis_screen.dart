import 'package:flutter/material.dart';

import '../Home/Tabs/Ahadis.dart';

class HadethDitels extends StatelessWidget {
static const String routeName= 'HadethDitels';
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
      'assets/images/backgroundimage.png',
      width: double.infinity,
      fit: BoxFit.fitWidth,
    ),
    Scaffold(
    appBar: AppBar(
    centerTitle: true,
    title: Text(
    args.title,
    style: Theme.of(context).textTheme.headline1,
    ),
    ),
      body: ListView.builder(
          itemCount: args.content.length,
          itemBuilder: (c,index){
        return Center(child: Text(args.content[index],style: TextStyle( color: Colors.black,),));
      }),
    ),
  ],
    );
  }
}
