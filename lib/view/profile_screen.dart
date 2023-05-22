import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> items = [
    'Male',
    'Female',

  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Column(
          children: [
            const SizedBox(height: 22,),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.location_on_rounded,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Address',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.payment,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Payments',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.security,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Settings',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.language,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Language',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Dark Mode',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Privacy & Policy',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.help_center,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Help Center',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon:  const Icon(
                      Icons.invert_colors_off,
                      color: Colors.black,
                      size: 20,
                    )),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Invite friends',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout,
                      color: Colors.pink.shade900,
                      size: 20,
                    )),
                Container(
                    height: 30,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink.shade900,
                              ),
                              onPressed: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => HidenDrawer()),
                                // );
                              },
                              child: const Text('Log Out'),
                            )),
                      ],
                    )

                )
              ],
            )
          ],),
      ),
    );
  }
}
