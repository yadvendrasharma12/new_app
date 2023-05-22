import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'OTP Verfication',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 28,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            ' An 6 digite code has been sent to..',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Your Mobile Number...',
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
                  margin: EdgeInsets.only(top: 15,bottom: 15),
                  height: 160,
                  width: 260,
                  child: Image.network("https://img.freepik.com/free-vector/sign"
                      "-page-abstract-concept-illustration_335657-2242.jpg?w=2000"),
                ),

                Container(
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child:Pinput(
                    length: 6,
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 40,
                      right: 20,
                      left: 20,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: ElevatedButton(
                          child:  Text(
                            'Verify',
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
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
                          onPressed: () { if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(content: Text('Processing Data')),
                            );
                          }},
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 200),
                  child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Resend OTP',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
