
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/screen/getstate_screen.dart';

import '../wiget/backgroundimage.dart';

class Joinus extends StatelessWidget {
  const Joinus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Backgroundimage(
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                //  SizedBox(height: 200,),
                  Text("Join Us",style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height: 48,),
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
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("have an account?",style: Theme.of(context).textTheme.titleLarge,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Getstatescreen();
                        }));
                      },
                          child: Text("Sign in",style: TextStyle(color: Colors.blue,fontSize: 16),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ) ,),
    );
  }
}
