
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/wiget/profile.dart';
import 'package:ostad2/wiget/summary.dart';
import 'package:ostad2/wiget/task.dart';

class Newscreen extends StatelessWidget {
  const Newscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Profile(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Summaryscreen(case1: "09", case2: "New screen"),
                  Summaryscreen(case1: "54", case2: "Progress"),
                  Summaryscreen(case1: "19", case2: "Completed"),
                  Summaryscreen(case1: "90", case2: "Cancelled"),
                ],
              ),
            ),
Expanded(
  child:   ListView.builder(
  
      itemCount: 5,
  
      itemBuilder: (context,index){
  
    return Taskpage();
  
  }),
)

          ],
        ),
      )
    );
  }
}
