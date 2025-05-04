import 'package:flutter/material.dart';
import 'package:flutter01/auction.dart';
import 'package:flutter01/profile.dart';
import 'Strings/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfileWidget(),   //Replace with AuctionPage()
    );
  }
}
