import 'package:flutter/material.dart';
import 'package:sumadores/src/pages/sumador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: SumadorPage(),
      ),
    );
  }
}
