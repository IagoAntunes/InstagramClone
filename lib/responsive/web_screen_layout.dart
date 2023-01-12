import 'package:flutter/material.dart';
import 'package:instagramclone/responsive/screens/login_screen.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  
  @override
  Widget build(BuildContext context) {
    return const LoginScreen();
  }
}
