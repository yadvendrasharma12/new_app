
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          height: 47,
          width: 330,
          decoration: const BoxDecoration(
            color: Color(0XFFE7F4FB),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          margin: const EdgeInsets.all(6.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, top: 5,right: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10,bottom: 6
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "speed Dating",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        "Your crush is waiting",
                        style: TextStyle(
                            color: Color(0XFF51C3FB),
                            fontWeight: FontWeight.bold,
                            fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 82),
                      child: Text(
                        "11:45:25",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 8.0,left: 53),
      //   child: Row(children: [ Text(
      //     "Online Users",
      //     style: TextStyle(
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //         fontSize: 12),
      //   ),],),
      // ),
    );
  }
}
