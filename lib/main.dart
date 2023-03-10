import 'package:flutter/material.dart';
import 'package:milioner/question_provider.dart';
import 'package:milioner/start_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => QuestionProvider(),
    builder: (context, _) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Millionarie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    ),
    );
  }
}
