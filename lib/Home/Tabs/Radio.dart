
import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         children: [
           Image.asset('assets/images/Radio.png'),
           SizedBox(height: 20,),
           Text(
             'اذاعة القران الكريم',
             style: TextStyle(
               color: Colors.black,
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),
           ),
           SizedBox(height: 60),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               IconButton(
                 icon: Icon(Icons.skip_next,color: Colors.black,size: 60,),
                 onPressed: () {},
               ),
               IconButton(
                 icon: Icon(Icons.play_circle,color: Colors.black,size: 60,),
                 onPressed: () {},
               ),
               IconButton(
                 icon: Icon(Icons.skip_previous,color: Colors.black,size: 60,),
                 onPressed: () {},
               ),
             ],
           )

         ],
       ),
     ),
    );
  }
}
