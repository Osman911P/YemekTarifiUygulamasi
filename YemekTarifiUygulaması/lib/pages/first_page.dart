import 'package:flutter/material.dart';
import 'package:untitled2/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FirstPage")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          onPressed: () {
            // 2. sayfaya gitme
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FirstPage(),
                ),
            );
          },
        ),
      ),
    );
  }
}
