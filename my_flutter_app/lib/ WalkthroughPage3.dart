import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalkthroughPage3 extends StatelessWidget {
  final PageController pageController;

  WalkthroughPage3({required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Committed Delivery on Time',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          SvgPicture.asset('assets/images/Group 3.svg'),
       
        ],
      ),
    );
  }
}
