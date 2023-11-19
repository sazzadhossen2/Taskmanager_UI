
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/screen/setpassword.dart';
import 'package:ostad2/wiget/backgroundimage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pinvarification extends StatefulWidget {
  const Pinvarification({super.key});

  @override
  State<Pinvarification> createState() => _PinvarificationState();
}

class _PinvarificationState extends State<Pinvarification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Backgroundimage(
        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              children: [
                SizedBox(height: 200,),
                Text("Pin Varification",style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 20,),
                Text("A 6 digit verification will send your email adress"),
SizedBox(height: 50,),

                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  }, appContext: context,
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Setpasswordscreen();
                      }));

                    }, child: Text("verify"))),
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
        ) ,
      ),
    );
  }
}
