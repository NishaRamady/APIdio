import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidiodeleteScreen extends StatelessWidget {
  const ApidiodeleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              deleteData1();
              
            },
            child: const Text("Delete data'"),
          )
        ]),
      ),
    );
  }
}

void deleteData1() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos/1");
  var res = await dio.delete("https://jsonplaceholder.typicode.com/todos/1");
  log(response.statusCode.toString());
  log(response.data.toString());
  log(res.statusCode.toString());
  log(res.data.toString());
}
