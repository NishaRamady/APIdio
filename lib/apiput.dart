import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApidioputScreen extends StatelessWidget {
  const ApidioputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              putData1();
             
              
            },
            child: const Text("update data'"),
          )
        ]),
      ),
    );
  }
}

void putData1() async {
  var dio = Dio();
  var response = await dio.put("https://jsonplaceholder.typicode.com/posts/1", data : {"name" :"abhi",'email' :'abhi@mail.com'});
  log(response.statusCode.toString());
  log(response.data.toString());
}




