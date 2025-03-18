import 'package:flutter/material.dart';
import 'package:hesaplama_app/contstants/app_constants.dart';
import 'package:hesaplama_app/widgets/ortalama_hesapla_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamik Ortalama Hesaplama',
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity 
      ),
      home: OrtalamaHesaplaPage(),
    );
  }
}
 
