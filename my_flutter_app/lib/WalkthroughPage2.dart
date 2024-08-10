import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalkthroughPage2 extends StatelessWidget {
  final PageController pageController;

  WalkthroughPage2({required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Package in Our Safe Hands',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          SvgPicture.asset('assets/images/illustration 2.svg'),
        
        ],
      ),
    );
  }
}
