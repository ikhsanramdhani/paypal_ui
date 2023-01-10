import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';
import 'package:paypal_app/shared/recent_item.dart';

class Recent extends StatelessWidget {
  final Widget navigateTo;

  Recent({required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 50,
            width: 1000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_0.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_1.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_2.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_3.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_4.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_5.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_6.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_7.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
                RecentItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_8.jpg",
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
