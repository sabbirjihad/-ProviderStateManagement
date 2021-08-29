import 'package:flutter/material.dart';
import 'package:provider_sm_app/eligibility_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'provider demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EligibilityScreen(),
    );
  }
}
