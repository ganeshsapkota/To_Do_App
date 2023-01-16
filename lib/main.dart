// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Todo App",
      debugShowCheckedModeBanner: false,
      home: const TODOAPP(),
    ));

class TODOAPP extends StatefulWidget {
  const TODOAPP({super.key});

  @override
  State<TODOAPP> createState() => _State();
}

class _State extends State<TODOAPP> {
  late String value;
  var listTODO = [''];
  addToDo(String item) {
    setState(() {
      listTODO.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text("What you do today can improve all your tomorrows."),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addToDo(value);
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: listTODO.length,
        itemBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 40),
                    decoration: InputDecoration(
                        hintText: "Add your items",
                        fillColor: Colors.lightBlue),
                    onChanged: (val) {
                      value = val;
                    },
                  ),
                )
              : ListTile(
                  leading: Text(
                    "(${index + 0})",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    listTODO[index],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                );
        },
      ),
    );
  }
}
