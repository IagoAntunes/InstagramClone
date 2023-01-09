import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/screens/signup_screen.dart';
import 'package:instagramclone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAQCwF_EybwNpNd3d8BXutsbdu9Z-ekkiU",
          authDomain: "instagramclone-a1bba.firebaseapp.com",
          projectId: "instagramclone-a1bba",
          storageBucket: "instagramclone-a1bba.appspot.com",
          messagingSenderId: "935044049371",
          appId: "1:935044049371:web:7a3d4228b40e9aa08adffe"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const SignupScreen(),
      // ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
    );
  }
}
