import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class FeverateScreen extends StatefulWidget {
  const FeverateScreen({Key? key}) : super(key: key);

  @override
  _FeverateScreenState createState() => _FeverateScreenState();
}

class _FeverateScreenState extends State<FeverateScreen> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 5);

  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      backgroundColor: Color(0XFFE77995),
      body: Column(
        children: [
          Row(
            children: [

            ],
          ),
          Column(children: [   Padding(
            padding: const EdgeInsets.only(left: 16, top: 45),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 218,
                  decoration: BoxDecoration(
                      color: Color(0XFFe8819b),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.event_busy,
                            size: 17,
                            color: Colors.white,
                          )),
                      Text(
                        "Buy Premimum Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outline,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Account Managment ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_add_alt_1_outlined,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Match Perference",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Notification",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.switch_access_shortcut,
                              size: 17,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.privacy_tip_outlined,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.contact_support_outlined,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Support Center",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_outlined,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Clear Cache",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 25),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 218,
                    decoration: BoxDecoration(
                        color: Color(0XFFe8819b),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.login_outlined,
                              size: 17,
                              color: Colors.white,
                            )),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),],)
        ],
      ),
    );
  }
}
