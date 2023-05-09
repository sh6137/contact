import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = ['김영숙', '홍길동', '피자집'];
  var count = [0, 0, 0];

  //자식에서 부모를 변경 하고 싶을 때
  addOne(nameValue, countValue) {
    setState(() {
      total++;
      count.add(countValue);
      name.add(nameValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text(total.toString()),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogUI(name: name, total: total, addOne: addOne);
              });
        },
      ),
      appBar: AppBar(title: Text('앱제목')),
      body: ListView.builder(
        itemCount: total,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Image.asset('assets/lion.png'),
            title: Text(name[i]),
          );
        },
      ),
      bottomNavigationBar: BottomCustom(),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.name, this.total, this.addOne}) : super(key: key);
  final total;
  final name;
  final addOne;

  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          TextField(
            controller: inputData,
          ),
          Text(
            name.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(total.toString()),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              addOne(inputData.text.toString(), 0);
              Navigator.pop(context);
            },
            child: Text('Yes'),
          ),
        ],
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
