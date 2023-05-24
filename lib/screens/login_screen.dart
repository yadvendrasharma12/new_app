import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/screens/forget_password.dart';
import 'package:new_app/screens/phone_number.dart';
import 'package:new_app/screens/signup_screen.dart';
import 'package:new_app/view/practise_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String name, email;
  bool value = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PracticeScreen()),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.blue[900]),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 28,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Enter email and password to login...',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 150,
                  width: 260,
                  child: Image.asset("assets/loging.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 25, bottom: 10),
                  child: Container(
                    width: 350,
                    height: 48,
                    child: TextFormField(
                      // validator: (value) {
                      //   bool isEmailValid = RegExp(
                      //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //       .hasMatch(value!);
                      //   if (!isEmailValid) {
                      //     return 'Invalid email.';
                      //   }
                      //   return null;
                      // },
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        labelText: "Email  ", fillColor: Colors.white,
                        filled: true,
                        labelStyle: const TextStyle(color: Colors.black), //
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 10, bottom: 10),
                  child: Container(
                    width: 350,
                    height: 48,
                    child: TextFormField(
                      maxLength: 9,
                      obscureText: _isHidden,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          counterText: "",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: "Password  ",
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(color: Colors.black), //
                          suffixIcon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.blue[800],
                              ))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  // {
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget password',
                          style: GoogleFonts.lato(
                            textStyle:
                                Theme.of(context).textTheme.headlineLarge,
                            fontSize: 16,
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: ElevatedButton(
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.headlineLarge,
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(26)),
                              backgroundColor: Colors.blue[900]),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              String email = emailController.text.trim();
                              String password = passwordController.text.trim();
                              // _authController.signIn(email, password);
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 14,),
                      Center(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 65,
                                width: 65,
                                child: Image.asset("assets/googleg.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/facebooks.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/twitter.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 61,
                                width: 61,
                                child: Image.asset("assets/applelooks.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PhoneNumber()),
                                );
                              },
                              child: Container(
                                height: 45,
                                width: 45,
                                child: Image.asset("assets/phonenumber.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account",
                            style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.headlineLarge,
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.lato(
                                textStyle:
                                    Theme.of(context).textTheme.headlineLarge,
                                fontSize: 18,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 60, top: 13),
                      //           width: 13,
                      //           height: 6,
                      //           child: Checkbox(
                      //             checkColor: Colors.white,
                      //             hoverColor: const Color(0XFF2C4DD2), value: value, onChanged: (bool? value) {
                      //             setState(() {
                      //               this.value = value!;
                      //             });
                      //           },
                      //           ),
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 9, top: 4),
                      //           child: const Text(
                      //             'i agree to',
                      //             style: TextStyle(
                      //               fontSize: 15,
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.w500,
                      //             ),
                      //           ),
                      //         ),
                      //         GestureDetector(
                      //           onTap: () {},
                      //           child: Container(
                      //             margin: const EdgeInsets.only(left: 4, top: 4),
                      //             child: Text(
                      //               'Terms & condition',
                      //               style: TextStyle(
                      //                 fontSize: 15,
                      //                 color: Colors.blue.shade900,
                      //                 fontWeight: FontWeight.w700,
                      //                 decoration: TextDecoration.underline,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 4, top: 4),
                      //           child: const Text(
                      //             'and',
                      //             style: TextStyle(
                      //               fontSize: 15,
                      //               color: Colors.black,
                      //               fontWeight: FontWeight.w500,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {},
                      //       child: Container(
                      //         margin: const EdgeInsets.only(left: 84, top: 6),
                      //         child: Text(
                      //           'Privacy policy',
                      //           style: TextStyle(
                      //             fontSize: 15,
                      //             color: Colors.blue.shade900,
                      //             fontWeight: FontWeight.w700,
                      //             decoration: TextDecoration.underline,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
