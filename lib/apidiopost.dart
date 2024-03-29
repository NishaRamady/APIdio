import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidiopostScreen extends StatelessWidget {
  const ApidiopostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              postData1();
              postData2();
              
            },
            child: const Text("Post data'"),
          )
        ]),
      ),
    );
  }
}

void postData1() async {
  var dio = Dio();
  var response = await dio.post("https://jsonplaceholder.typicode.com/posts", data : {"name" :"abhi",'email' :'abhi@mail.com'});
  log(response.statusCode.toString());
  log(response.data.toString());
}

void postData2() async {
  var dio = Dio();
  var response = await dio.post("https://jsonplaceholder.typicode.com/posts", data : {"name" :"ashi",'email' :'ashi@mail.com'});
  log(response.statusCode.toString());
  log(response.data.toString());
}




