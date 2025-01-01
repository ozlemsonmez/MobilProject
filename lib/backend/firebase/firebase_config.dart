import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDp43sVPIHpYi5XaZEHqlINArOcYEPHT7Y",
            authDomain: "mobileproject-377ef.firebaseapp.com",
            projectId: "mobileproject-377ef",
            storageBucket: "mobileproject-377ef.firebasestorage.app",
            messagingSenderId: "19131817847",
            appId: "1:19131817847:web:5e20a02da5a7e2e6000b72",
            measurementId: "G-KT942GN642"));
  } else {
    await Firebase.initializeApp();
  }
}
