import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('My First App'),
      centerTitle: true,
      backgroundColor: Colors.lightGreen,
    ),
    body: Center(
      child: Text(
        'Hello Fab',
            style: TextStyle(
          fontSize: 20.0,
        fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.black38,
      ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Text('Click'),
      backgroundColor: Colors.lightGreen,
      onPressed: () {
        print('button clicked');
      },
    ),
  ),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
