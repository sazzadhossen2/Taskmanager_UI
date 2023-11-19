
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../wiget/profile.dart';
import '../wiget/task.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              Profile(),

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
