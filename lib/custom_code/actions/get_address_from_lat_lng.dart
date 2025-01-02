// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geocoding/geocoding.dart';
import '/flutter_flow/flutter_flow_util.dart'; // FlutterFlow LatLng sınıfını içeren dosya

Future<String> getAddressFromLatLng(
  LatLng? location,
) async {
  String address = "";

  if (location == null) {
    return "Invalid location";
  }

  try {
    // Geocoding işlemi için FlutterFlow'un LatLng sınıfını kullanıyoruz
    List<Placemark> placemarks = await placemarkFromCoordinates(
      location.latitude, // FlutterFlow LatLng nesnesinden enlem
      location.longitude, // FlutterFlow LatLng nesnesinden boylam
    );

    if (placemarks.isNotEmpty) {
      Placemark place = placemarks.first;
      address = "${place.locality}, ${place.country}";
    } else {
      address = "Address not found";
    }
  } catch (e) {
    print("Error: $e");
    address = "Error retrieving address";
  }

  return address;
}
