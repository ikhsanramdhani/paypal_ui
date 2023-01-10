import 'package:flutter/material.dart';
import 'package:paypal_app/shared/widgets.dart';
import 'package:paypal_app/shared/contact.dart';
import 'package:paypal_app/shared/recent.dart';
import 'package:paypal_app/screens/request/request_from.dart';
import 'package:paypal_app/utils/constants.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar("Request Money"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: kPrimaryColor),
                  labelText: "Name, Email or Mobile number",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 2),
                  ),
                ),
                cursorColor: kPrimaryColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Recent(
                  navigateTo: RequestFrom(),
                ),
              ),
              Expanded(
                child: Contacts(
                  navigateTo: RequestFrom(),
                ),
              ),
            ],
          ),
        ));
  }
}
