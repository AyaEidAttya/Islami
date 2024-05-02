import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/body of seb7a.png'),
              SizedBox(
                height: 30,
              ),
              Text(
                'عدد التسبيحات',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    onPressed: () {
                      incrementCounter();
                    },
                    child: Text(
                      '$counter',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    icon: Icon(Icons.refresh,color: Colors.black,),
                    onPressed: () {
                      resetCounter();
                    },
                  ),
                ],
              ),

              SizedBox(height: 20),
              // Add more widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
