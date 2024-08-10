import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalkthroughPage4 extends StatelessWidget {
  final PageController pageController;

  WalkthroughPage4({required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '7/24 Fastest & Safest Delivery',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          SvgPicture.asset('assets/images/Group 4.svg'),
      
        ],
      ),
    );
  }
}
