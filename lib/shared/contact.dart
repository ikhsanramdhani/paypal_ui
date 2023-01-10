import 'package:flutter/material.dart';
import 'package:paypal_app/utils/constants.dart';
import 'package:paypal_app/shared/contact_item.dart';

class Contacts extends StatelessWidget {
  final Widget navigateTo;

  Contacts({required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Contacts",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ContactItem("", navigateTo, "assets/images/user_0.jpg",
                    "Rebecca Lucas"),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_1.jpg",
                  "Jose Young",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_2.jpg",
                  "Janice Brewer",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_3.jpg",
                  "Phoebe Buffay",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_4.jpg",
                  "Monica Geller",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_5.jpg",
                  "Rachel Green",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_6.jpg",
                  "Kamila Fros",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_7.jpg",
                  "Ross Geller",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_8.jpg",
                  "Chandler Bing",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_9.jpg",
                  "Yoyi Delirio",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_10.jpg",
                  "Murph Mocca",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_11.jpg",
                  "Josephine Alexandra",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_12.jpg",
                  "Carrel Christ",
                ),
                ContactItem(
                  "",
                  navigateTo,
                  "assets/images/user_13.jpg",
                  "Deph Liobre",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
