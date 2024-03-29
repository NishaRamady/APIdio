import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidiopatchScreen extends StatelessWidget {
  const ApidiopatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              patchData1();
            },
            child: const Text("Fetch data'"),
          )
        ]),
      ),
    );
  }
}

void patchData1() async {
  var dio = Dio();
  var response = await dio.get("https://jsonplaceholder.typicode.com/todos/1");
  var response2 =
      await dio.patch("https://jsonplaceholder.typicode.com/todos/1",data:{'name':"nish"});
   var response3=   
      await dio.patch("https://jsonplaceholder.typicode.com/todos/1",data:{'title':"new"});
      // var response4=   
      // await dio.put("https://jsonplaceholder.typicode.com/todos/1",data:{'title':"star"});
      // var response5 =
      // await dio.put("https://jsonplaceholder.typicode.com/todos/1",data:{'name':"nisha"});
  log(response.statusCode.toString());
  log(response.data.toString());
   log(response2.statusCode.toString());
  log(response2.data.toString());
   log(response3.statusCode.toString());
  log(response3.data.toString());
  //  log(response4.statusCode.toString());
  // log(response4.data.toString());
  //  log(response5.statusCode.toString());
  // log(response5.data.toString());
}


