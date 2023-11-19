
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/wiget/profile.dart';

class AddnewTask extends StatelessWidget {
  const AddnewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Profile(),

Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Column(
    children: [
        SizedBox(height: 80,),
        Text("Add New Task",style: Theme.of(context).textTheme.titleLarge,),
        SizedBox(height: 48,),
        TextFormField(
          decoration: InputDecoration(
              hintText: "subject"
          ),
        ),
        SizedBox(height: 10,),
        TextFormField(
          maxLines: 4,
          decoration: InputDecoration(
              hintText: "description"
          ),
        ),
        SizedBox(height: 20,),
        Container(
            width: double.infinity,
            child: ElevatedButton(onPressed: (){}, child: Icon(Icons.navigate_next_outlined)))
    ],
  ),
)

          ],
        ),
      ),
    );
  }
}
