import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home/home_page.dart';
import 'package:spotify_clone/pages/splash/splash_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: Splashpage.id,
      home: const HomePage(),
      routes: {
        Splashpage.id:(context)=>const Splashpage(),
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}
