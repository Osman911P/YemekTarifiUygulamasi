import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Favori Yemeklerim:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String foodName) {
    return ListTile(
      title: Text(foodName),
      leading: Icon(Icons.fastfood),
      onTap: () {},
    );
  }
}
