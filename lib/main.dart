import 'package:apidio/apidelete.dart';
import 'package:apidio/apidioget.dart';
import 'package:apidio/apidiopost.dart';
import 'package:apidio/apigetpost.dart';
import 'package:apidio/apipatch.dart';
import 'package:apidio/apiput.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Dio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const ApidiogetScreen(),
      //  home: const ApidiopostScreen(),
      //  home: const ApidiogetpostScreen(),
      //  home: const ApidioputScreen(),
      //  home: const ApidiopatchScreen(),
      home:const ApidiodeleteScreen(),
    );
  }
}

