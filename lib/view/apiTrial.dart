import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List<dynamic> emp = [];

class Trial1 extends StatefulWidget {
  const Trial1({super.key});

  @override
  State<Trial1> createState() => _Trial1State();
}

class _Trial1State extends State<Trial1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              getEmp();
              log("on Tapped");
              setState(() {});
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: emp.length,
              itemBuilder: (context, idx) {
                return  Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Text("${emp[idx]['id']}"),
                      )
                  ;
              },
            ),
          ),
        ],
      ),
    ));
  }
}

void getEmp() async {
  log("on Tapped1");
  Uri url = Uri.parse("https://dummyapi.online/api/movies");
  http.Response r = await http.get(url);

  var resD = json.decode(r.body);
  emp = resD;
 
}
