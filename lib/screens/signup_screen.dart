import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {'email': '', 'password': ''};
  TextEditingController PasswordController = TextEditingController();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  bool _isHiddenshow = true;
  void _togglePasswordViews() {
    setState(() {
      _isHiddenshow = !_isHiddenshow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign Up',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 28,
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                'Create a new account...',
                                style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
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
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15, top: 50, bottom: 0),
                      child: Container(
                        width: 350,
                        height: 48,
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: "Name  ", fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.black), //
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15, top: 20, bottom: 0),
                      child: Container(
                        width: 350,
                        height: 48,
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            labelText: "Email ", fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(color: Colors.black), //
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15, top: 20, bottom: 0),
                      child: Container(
                        width: 350,
                        height: 48,
                        child: TextFormField(
                          obscureText: _isHidden,
                          maxLength: 9,
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
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15.0, right: 15, top: 20, bottom: 10),
                      child: Container(
                        width: 350,
                        height: 48,
                        child: TextFormField(
                          obscureText: _isHiddenshow,
                          maxLength: 9,
                          controller: confirmpasswordController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              labelText: "Confirm password  ",
                              fillColor: Colors.white,
                              filled: true,
                              labelStyle: TextStyle(color: Colors.black), //
                              suffixIcon: InkWell(
                                  onTap: _togglePasswordViews,
                                  child: Icon(
                                    _isHiddenshow
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.blue[800],
                                  ))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
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
                                'Sign Up',
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
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26)),
                                  backgroundColor: Colors.blue[900]),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                  );
                                  String name = nameController.text.trim();
                                  String email = emailController.text.trim();
                                  String password = passwordController.text;
                                  //  _authController.signUp(name, email, password);
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account',
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
                                        builder: (context) => LoginScreen()),
                                  );
                                },
                                child: Text(
                                  'Sign In',
                                  style: GoogleFonts.lato(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineLarge,
                                    fontSize: 18,
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 33,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
