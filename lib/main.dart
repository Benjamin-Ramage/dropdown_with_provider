import 'package:dropdown_with_provider/home_screen.dart';
import 'package:dropdown_with_provider/services/dropdown_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MeasurementTypes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dropdown Service',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}