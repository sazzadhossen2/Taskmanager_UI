
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/homescreen/addnew_task.dart';
import 'package:ostad2/homescreen/cancelledscreen.dart';
import 'package:ostad2/homescreen/completedScreen.dart';
import 'package:ostad2/homescreen/newscreen.dart';
import 'package:ostad2/homescreen/progressscreen.dart';
import 'package:ostad2/wiget/profile.dart';
import 'package:ostad2/wiget/summary.dart';
import 'package:ostad2/wiget/task.dart';

class Homescreen1 extends StatefulWidget {
   Homescreen1({super.key});

  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> {
int _selected=0;

List<Widget>_screen=[
  Newscreen(),
  ProgressScreen(),
  CanceledScreen(),
  CompletedScreen()

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: (index){
_selected=index;
setState(() {

});
        },
        backgroundColor: Colors.green,

selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
items: [
  BottomNavigationBarItem(icon: Icon(Icons.abc_sharp),label: "New"),
  BottomNavigationBarItem(icon: Icon(Icons.change_circle),label: "In progress"),
  BottomNavigationBarItem(icon: Icon(Icons.close),label: "Canceled"),
  BottomNavigationBarItem(icon: Icon(Icons.done),label: "Compeleted"),
],
      ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return AddnewTask();
    }));
  },
  child: Icon(Icons.add),
),
body:_screen[_selected]

    );
  }
}
