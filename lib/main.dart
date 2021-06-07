import 'package:flutter/material.dart';

import 'package:bussiness_card_app/src/pages/cardPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bussiness card app',
      home: CardPage(),
    );
  }
}
