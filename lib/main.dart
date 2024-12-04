import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/google_login_screen.dart'; 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: '${dotenv.env['API_KEY']}',
  //         appId: '${dotenv.env['APP_ID']}',
  //         messagingSenderId: '${dotenv.env['MESSAGING_SENDER_ID']}',
  //         projectId: '${dotenv.env['API_KEY']}'));
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyCKOAHbAL3ZXfjFVMlVDVWXUPiuqqQBGCM',
          appId: '1:800961886280:android:1227f449ecf2dd1e4b007d',
          messagingSenderId: '800961886280',
          projectId: 'boilerplate-d54ec'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: GoogleSignInScreen(),
    );
  }
}
