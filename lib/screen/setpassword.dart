
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/screen/joinus.dart';
import 'package:ostad2/wiget/backgroundimage.dart';

class Setpasswordscreen extends StatelessWidget {
  const Setpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Backgroundimage(
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 200,),
                Text("Set password",style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 20,),
                Text("Minimum length password 8 charecter with letter"),
                SizedBox(height: 48,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Confirm password"
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Joinus();
                      }));

                    }, child: Text("Confirm"))),
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
          ),
        ) ,),
    );
  }
}
