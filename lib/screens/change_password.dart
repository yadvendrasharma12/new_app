
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController oldPasswordControoler = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:  Icon(
                  Icons.close,
                  color: Colors.black,
                )),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),


        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Create new Password',
                              style: GoogleFonts.lato(
                                textStyle: Theme.of(context).textTheme.headline4,
                                fontSize: 28,
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'Your new password must be diffrent',
                              style: GoogleFonts.lato(
                                textStyle: Theme.of(context).textTheme.headline4,
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'from previous used passwords....',
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
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 50, bottom: 0),
                    child: Container(
                      width: 350,
                      height: 48,
                      child: TextFormField(
                        controller: oldPasswordControoler,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: "Old password  ", fillColor: Colors.white,
                          filled: true,
                          labelStyle: const TextStyle(color: Colors.black), //
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 0),
                    child: SizedBox(
                      width: 350,
                      height: 48,
                      child: TextFormField(
                        controller: newPasswordController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: " New password", fillColor: Colors.white,
                          filled: true,
                          labelStyle: const TextStyle(color: Colors.black), //
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: ElevatedButton(
                            child: Text(
                              'Change password',
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data')),
                                );
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 33,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
