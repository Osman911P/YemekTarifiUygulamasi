import 'package:flutter/material.dart';
import 'package:untitled2/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FirstPage")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: (){

              } ,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
            )
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Giriş Yap"),
          onPressed: () {
            // 2. sayfaya gitme
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage(),
                ),
            );
          },
        ),
      ),
    );
  }
}
