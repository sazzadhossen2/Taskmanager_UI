
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/screen/getstate_screen.dart';
import 'package:ostad2/wiget/backgroundimage.dart';
import 'package:ostad2/wiget/profile.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Profile(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [

                SizedBox(height: 48,),
                Text("Update Profile",style: Theme.of(context).textTheme.titleLarge,),
Container(
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
border: Border(

),
color: Colors.white,
  ),
  child: Row(children: [
Expanded(

  child:   Container(
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey
    ),
alignment: Alignment.center,
    child: Text("Photo"),
  ),
),
    Expanded(
        flex: 3,
        child: Container(
          height: 50,
        ),
    )
  ],),
),
SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Fast Name"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Last Name"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Mobile"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "password"
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text("Confirm"))),
              ],),
            )
          ],
        ),
      )

    );
  }
}
