import 'package:flutter/material.dart';
import 'list_view_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Demo'),
          centerTitle: true,
        ),
        body: const ListViewPage(),
      ),
    );
  }
}
