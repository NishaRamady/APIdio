import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidiogetpostScreen extends StatelessWidget {
  const ApidiogetpostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              getpostData1();
              
              
            },
            child: const Text("Get/Post data'"),
          )
        ]),
      ),
    );
  }
}

void getpostData1() async {
  var dio = Dio();
  var response = await Future.wait([
    dio.get("https://jsonplaceholder.typicode.com/posts/1"),
    dio.post("https://jsonplaceholder.typicode.com/posts",),
]);
  log(response[0].statusCode.toString());
  log(response[1].statusCode.toString());
  log(response[0].data.toString());
  log(response[1].data.toString());
}





