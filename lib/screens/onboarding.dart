import 'package:flutter/material.dart';
import 'package:paypal_app/screens/login.dart';
import 'package:paypal_app/utils/constants.dart';
import 'package:paypal_app/utils/data.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  final int _totalPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (var i = 0; i < _totalPages; i++) {
      list.add(_indicator(i == _currentPage));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: isActive ? kSecondaryColor : Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: getOnboardingPages()
                  .map((item) => renderPageItem(item))
                  .toList(),
            )),
            Padding(
              // padding: EdgeInsets.all(40),
              padding: EdgeInsets.fromLTRB(40, 1, 40, 20),
              child: Container(
                  height: 48,
                  child: _currentPage != _totalPages - 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                            Row(
                              children: _buildPageIndicator(),
                            ),
                            GestureDetector(
                              onTap: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            "Let's start",
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(kPrimaryColor)),
                        )),
            )
          ],
        ),
      ),
    );
  }

  Widget renderPageItem(OnboardingPage page) {
    return Padding(
      // padding: EdgeInsets.all(40),
      padding: EdgeInsets.fromLTRB(48, 0, 48, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              page.imageUrl,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            height: 64,
          ),
          Center(
            child: Text(
              page.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              height: 1,
              width: 100,
              color: Colors.grey[300],
            ),
          ),
          Center(
            child: Text(
              page.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kGreyColor,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
