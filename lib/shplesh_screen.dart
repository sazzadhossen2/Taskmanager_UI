

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ostad2/screen/getstate_screen.dart';
import 'package:ostad2/wiget/backgroundimage.dart';

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({super.key});

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextscreen();
  }
void nextscreen(){
  Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context){
    return Getstatescreen();
  })));
}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgroundimage(child: Center(child: SvgPicture.asset("assets/images/logo.svg")),),
        
      ],
    );
     
  }
}
