
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summaryscreen extends StatelessWidget {
  String case1,case2;
   Summaryscreen({required this.case1,required this.case2});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(case1,style: Theme.of(context).textTheme.titleLarge,),
            Text(case2),
          ],
        ),
      ),
    );
  }
}
