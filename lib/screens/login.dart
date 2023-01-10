import 'package:flutter/material.dart';
import 'package:paypal_app/screens/paypal.dart';
import 'package:paypal_app/screens/signup.dart';
import 'package:paypal_app/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log In",
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
                      icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                      labelText: "Password",
                      labelStyle: TextStyle(color: kPrimaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                    ),
                    cursorColor: kPrimaryColor,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 32,
                  ),
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
                            "Log In",
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(kPrimaryColor)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Nice to have you back, it's time to start shopping, thousands of stores are waiting for you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGreyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do you have an account?",
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
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          "Sign Up",
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
