import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/view/cart_screen.dart';
import 'package:new_app/view/faverate_screen.dart';
import 'package:new_app/view/home_page_screen.dart';
import 'package:new_app/view/caterious_screen.dart';
import 'package:new_app/view/profile_screen.dart';
class PracticeScreen extends StatefulWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  int _selectedIndexr=0;
  static final List<Widget>_widgetOptions = <Widget>[
    const HomePageScreen(),
    const CateriousScreen(),
    const FeverateScreen(),
    const ProfileScreen(),
    const CartScreen()
  ];


  void _onItemTappedr(int index){
    setState(() {
      _selectedIndexr = index;
      if (kDebugMode) {
        print('$_selectedIndexr');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Drawer();
              },
              icon:  const Icon(
                Icons.sort,color: Colors.black,
                size: 30,
              )),
          title: Row(
            children:[
              Text(
                "My",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  color: Colors.pink.shade900,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "Shop",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle:FontStyle.italic,
                ),
              )
            ],
          ),
          actions:[
            IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.notifications,
                  size: 27,color: Colors.black,
                )),
          ],
        ),
        backgroundColor: Colors.white,
        body:_widgetOptions[_selectedIndexr],
        bottomNavigationBar:BottomNavigationBar(
          onTap: _onItemTappedr,
          currentIndex: _selectedIndexr, //New
          elevation: 9,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: Colors.blue.shade900,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categrious',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
