
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Backgroundimage extends StatelessWidget {
 final Widget child;
  Backgroundimage({required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: double.infinity,
            child: SvgPicture.asset("assets/images/background.svg",fit: BoxFit.cover)),
        child,
      ],
    );
  }
}
