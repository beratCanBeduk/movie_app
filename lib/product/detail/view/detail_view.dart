import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
const DetailView({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text('Detail Page'),
  ),
  body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [

      ],
    ),
  ),
  );
}
}