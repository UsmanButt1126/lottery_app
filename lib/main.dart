import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottery_app/secondDesign.dart';

void main() {
  runApp(LotteryApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=0;
  int winning=4;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your Selected Number is $x "),
                Container(
                height: 300,
              width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: x==winning? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all, color: Colors.green,),
                      Text("Congrats! You win the lottery.\n Your selcted number is $x")
                    ],
                  ):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error),
                      Text("Better Luck next time. Your number is \nTry Again")
                    ],
                  ),
            )
                ],
              ),

            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            x=random.nextInt(10);
          });
        }, child: Icon(Icons.refresh ,color:  Colors.black,), ),
      ),
    );
  }
}
