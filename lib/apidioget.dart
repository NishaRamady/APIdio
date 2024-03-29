import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidiogetScreen extends StatelessWidget {
  const ApidiogetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              fetchData1();
              fetchData2();
              fetchData3();
              fetchDatas();
            },
            child: const Text("Fetch data'"),
          )
        ]),
      ),
    );
  }
}

void fetchData1() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos/1");
  log(response.statusCode.toString());
  log(response.data.toString());
}

void fetchData2() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos/2");
  log(response.statusCode.toString());
  log(response.data.toString());
}

void fetchData3() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos/3");
  log(response.statusCode.toString());
  log(response.data.toString());
}

void fetchDatas() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos");
  log(response.statusCode.toString());
  log(response.data.toString());
}
