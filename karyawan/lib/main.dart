import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/karyawan.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Karyawan',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<List<Karyawan>> loadKaryawan() async {
    final String response = await rootBundle.loadString("assets/karyawan.json");
    final List<dynamic> data = json.decode(response);
    return Karyawan.fromJsonList(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Daftar Karyawan"),
      backgroundColor: Colors.lightBlueAccent,
    ),
    body: FutureBuilder<List<Karyawan>>(
      
    )
    );
  }
}
