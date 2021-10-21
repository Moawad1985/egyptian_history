import 'package:egyptian_history/main_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center  ,
          children: [
            Text(
              'Welcome to Egyptian History',
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
              ),
            ),
            Image.asset('images/tut.jpg'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
              },
              child: Text('Enter',style: TextStyle(
                fontSize: 20,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
