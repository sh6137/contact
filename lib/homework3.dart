import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  var count = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              print(a);
              a++;
            });
          },
        ),
        appBar: AppBar(title: Text('앱제목')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Text(count[i].toString()),
              title: Text(name[i]),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    count[i]++;
                  });
                },
                child: Text(
                  '좋아요',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomCustom(),
      ),
    );
  }
}

class BottomCustom extends StatelessWidget {
  const BottomCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        ),
      ),
    );
  }
}
