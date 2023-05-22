
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  int selectedIndex = 0;
  List Prodect = ["All", "Tshirt", "Topes", "Pents", "Jacket", "Shoes","Shirt","Watch","Belt"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: (){


              }, icon: const Icon(Icons.search_rounded,)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14)
              ),
              hintText: 'What are you looking for?',
              contentPadding: const EdgeInsets.all(4.0),
            ),
          ),
        ),
        // DefaultTabController(
        //     length: 4, // length of tabs
        //     initialIndex: 0,
        //     child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        //       Container(
        //         child: TabBar(
        //           labelColor: Colors.green,
        //           unselectedLabelColor: Colors.black,
        //           tabs: [
        //             Tab(
        //               child: Container(
        //                 height: 30,width: 70,
        //                 decoration: BoxDecoration(
        //                   color: Colors.white,
        //                   borderRadius: BorderRadius.circular(13)),
        //                 child: Center(child: Text("All",style: TextStyle(color: Colors.yellow.shade700,fontSize: 16,fontWeight: FontWeight.bold),)),
        //               ),
        //             ),
        //             Tab(text: 'Tab 2'),
        //             Tab(text: 'Tab 3'),
        //             Tab(text: 'Tab 4'),
        //           ],
        //         ),
        //       ),
        //       Container(
        //           height: 400, //height of TabBarView
        //           decoration: BoxDecoration(
        //               border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
        //           ),
        //           child: TabBarView(children: <Widget>[
        //             Container(
        //               child: Center(
        //                 child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        //               ),
        //             ),
        //             Container(
        //               child: Center(
        //                 child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        //               ),
        //             ),
        //             Container(
        //               child: Center(
        //                 child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        //               ),
        //             ),
        //             Container(
        //               child: Center(
        //                 child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        //               ),
        //             ),
        //           ])
        //       )
        //     ])
        // ),
        SizedBox(
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Prodect.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: index == selectedIndex
                            ? Colors.pink.shade900
                            : Colors.white,
                        border: Border.all(color: Colors.black45)),
                    height: 150,
                    width: 70,
                    child: Center(
                        child: Text(
                          Prodect[index],
                          style: TextStyle(
                              color: index == selectedIndex
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                  ),
                );
              }),
        ),

      ],
    );
  }
}
