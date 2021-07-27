

import 'package:api_project/API/getmethod.dart';
import 'package:api_project/API/postmethod.dart';
import 'package:api_project/API/putmethod.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API Example'),
        ),
        body: Center(
          child: Column(
            children:<Widget> [
              Center(
                child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => getmethod()),
                      );
                    },
                  child: Text("GET"),
                )
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => putmethod()),
                      );
                    },
                    child: Text("PUT"),
                  )
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => postmethod()),
                      );
                    },
                    child: Text("POST"),
                  )
              ),

          ]
          ),
        ),


        ),

    );
  }
}