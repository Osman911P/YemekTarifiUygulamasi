import 'package:flutter/material.dart';

import 'package:yemek_tarifi/views/widgets/welcome.dart'; // welcome.dart dosyasının gerçek yolunuza göre güncelleyin

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home:
          const WelcomePage(), // Uygulama ilk açıldığında WelcomePage açılacak
    );
  }
}
