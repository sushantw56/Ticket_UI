import 'package:flutter/material.dart';
import 'package:zappkode_task/ticket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ticket()),
                );
              },
              child: Icon(
                Icons.add,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
