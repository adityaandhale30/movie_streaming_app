import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List<dynamic> emp = [];

class Trial1 extends StatelessWidget {
  const Trial1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          getEmp();
          log("on Tapped");
        },
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
    ));
  }
}

void getEmp() async {
  log("on Tapped1");
  Uri url = Uri.parse("https://dummyapi.online/api/movies");
  http.Response r = await http.get(url);
  log(r.body);
  var resD = json.decode(r.body);
  emp = resD;
  log(emp.toString());
}
