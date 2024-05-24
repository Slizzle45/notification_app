import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const primaryColor = Color(0xFF424549);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification App',
      theme: ThemeData(
        primaryColor: Color(0x424549),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notification App'),
          backgroundColor: primaryColor,
          centerTitle: true,
        ),
        body: Text('merhaba dünya'),
      ),
    );
  }
}
