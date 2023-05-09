import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
          actions: [
            Icon(Icons.add, color: Colors.black),
            Icon(Icons.start, color: Colors.black),
            Icon(Icons.start, color: Colors.black),
          ],
          title: Text(
            "금호동3가",
          ),
        ),
        body: Container(
          height: 150,
          child: Row(
            children: [
              Container(
                child: Image.asset('assets/lion.png'),
              ),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("캐논ㅇㄹㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹ"),
                    Text(
                      "부산시 해운대구 10분전",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text("캐논ㅇㄹㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹ"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
