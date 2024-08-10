import 'package:flutter/material.dart';
import 'package:my_flutter_app/%20WalkthroughPage3.dart';
import 'package:my_flutter_app/WalkthroughPage1.dart';
import 'package:my_flutter_app/WalkthroughPage2.dart';



import 'package:my_flutter_app/WalkthroughPage4.dart';

class WalkthroughScreen extends StatefulWidget {
  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          WalkthroughPage1(pageController: _pageController),
          WalkthroughPage2(pageController: _pageController),
          WalkthroughPage3(pageController: _pageController),
          WalkthroughPage4(pageController: _pageController),
        ],
      ),
      bottomSheet: _currentPage == 3
          ? TextButton(
              onPressed: () {
                
              },
              style: TextButton.styleFrom(
                primary: Color(0xFFFD8700), // Button text color
              ),
              child: Text(
                'Proceed',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(3);
                    },
                    style: TextButton.styleFrom(
                      primary: Color(0xFFFD8700), // Button text color
                    ),
                    child: Text('Skip'),
                  ),
                  Row(
                    children: List.generate(4, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 8,
                        width: _currentPage == index ? 24 : 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? Color(0xFFFD8700) // Indicator color
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      );
                    }),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFD8700), // Button background color
                      onPrimary: Colors.white, // Button text color
                    ),
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
    );
  }
}
