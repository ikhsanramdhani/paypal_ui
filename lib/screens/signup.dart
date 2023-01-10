import 'package:flutter/material.dart';
import 'package:paypal_app/screens/login.dart';
import 'package:paypal_app/screens/paypal.dart';
import 'package:paypal_app/utils/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_outline, color: kPrimaryColor),
                      labelText: "Fullname",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    cursorColor: kPrimaryColor,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.mail_outline, color: kPrimaryColor),
                      labelText: "Email",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    cursorColor: kPrimaryColor,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone, color: kPrimaryColor),
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    cursorColor: kPrimaryColor,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                      labelText: "Create your password",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    obscureText: true,
                    cursorColor: kPrimaryColor,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                      labelText: "Confirm your password",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    cursorColor: kPrimaryColor,
                  ),
                  SizedBox(height: 32),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Paypal()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Sign Up",
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kPrimaryColor)),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
