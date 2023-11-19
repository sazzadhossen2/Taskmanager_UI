
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/screen/pinvarification.dart';
import 'package:ostad2/wiget/backgroundimage.dart';

class Youremailadress extends StatelessWidget {
  const Youremailadress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgroundimage(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 180,),
              Text("Your Email Adress",style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 20,),
              Text("A 6 digit verification will send your email adress"),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email"
                ),
              ),
              SizedBox(height: 48,),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return Pinvarification();
                  }));
                },
                    child: Icon(Icons.read_more_outlined),
                ),
              ),
SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("have an account?",style: Theme.of(context).textTheme.titleLarge,),
                  TextButton(onPressed: (){}, child: Text("Sign in",style: TextStyle(color: Colors.blue,fontSize: 16),))
                ],
              )

            ],
          ),
        ) ,),
    );
  }
}
