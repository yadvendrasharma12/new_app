import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class FeverateScreen extends StatefulWidget {
  const FeverateScreen({Key? key}) : super(key: key);

  @override
  _FeverateScreenState createState() => _FeverateScreenState();
}

class _FeverateScreenState extends State<FeverateScreen> {
  late GoogleMapController myController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 10.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Align(
              alignment: Alignment.topRight,
              child: FloatingActionButton(
                onPressed: () => print('You have pressed the button'),
                materialTapTargetSize: MaterialTapTargetSize.padded,
                backgroundColor: Colors.green,
                child: const Icon(Icons.map, size: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

}