
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/homescreen/homescreen1.dart';
import 'package:ostad2/screen/youremail_adress.dart';

import '../wiget/backgroundimage.dart';

class Getstatescreen extends StatelessWidget {
  const Getstatescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Backgroundimage(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get State With",style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(height:  80,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email"
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password"
                    ),
                  ),
                  SizedBox(height: 48,),
                  Container(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context){
                          return Homescreen1();
                        }));
                      }, child: Icon(Icons.read_more_outlined))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Youremailadress();
                        }));
                      }, child: Text("Forgot Password",style: TextStyle(color: Colors.black54),))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Dont have an account?",style: Theme.of(context).textTheme.titleLarge,),
                      TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.blue,fontSize: 16),))
                    ],
                  )
                ],
              ),
            ),
          )

       ),

    );
  }
}
