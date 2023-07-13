import 'package:chat_scholar_app/screens/chat_page.dart';
import 'package:chat_scholar_app/screens/login_screen.dart';
import 'package:chat_scholar_app/screens/register_screen.dart';
import 'package:chat_scholar_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),

      initialRoute: SplashPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SplashPage.id: (context) => SplashPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id: (context) => ChatPage()
      },
    );
  }
}
