
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/homescreen/update_screen.dart';

import '../screen/getstate_screen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.push(context,MaterialPageRoute(builder: (context){
  return UpdateScreen();
}));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage:AssetImage("assets/images/pictureee.png"),
        ),
        title: Text("Sazzad Hossen",style: Theme.of(context).textTheme.titleLarge,),
        subtitle: Text("sazzadhossen5213@gmail.com"),
        tileColor: Colors.green,
       // trailing: Icon(Icons.exit_to_app,color: Colors.white,),

        trailing: IconButton(
          onPressed: ()async{
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Getstatescreen();

            }));

          }, icon:Icon( Icons.logout),
        ),

      ),
    );
  }
}
