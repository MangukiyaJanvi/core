import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtnum = TextEditingController();
  int i = 0;
  List l1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication Table"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: txtnum,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                i = int.parse(txtnum.text);
                setState(() {
                  l1.add(1);
                  l1.add(2);
                  l1.add(3);
                  l1.add(4);
                  l1.add(5);
                  l1.add(6);
                  l1.add(7);
                  l1.add(8);
                  l1.add(9);
                  l1.add(10);
                  txtnum.clear();
                });
              },
              child: Text("Create"),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => Box(l1[index], i),
                  itemCount: l1.length),
            ),
          ],
        ),
      ),
    );
  }

  Widget Box(int n, int i) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 40,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                border: Border.all(color: Colors.pink.shade900),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text("${i}        ${n}       ${i * l1[n - 1]}")),
        ],
      ),
    );
  }
}
