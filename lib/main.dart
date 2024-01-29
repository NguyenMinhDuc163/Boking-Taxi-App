import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icar/src/app.dart';
void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options: FirebaseOptions(
   apiKey: "AIzaSyDqL0ZaUPg8LnIl1qaLHwXKKXO2wS7G2dg",
   appId: "1:1014518355437:android:86dd2ecadd78ad06c7c3e4",
   messagingSenderId: "1014518355437",
   projectId: "icarapp-f80cc",
   databaseURL: "https://icarapp-f80cc-default-rtdb.asia-southeast1.firebasedatabase.app",
  ),
 );
 // await Firebase.initializeApp();
 runApp( MyApp());
}
