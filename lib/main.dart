import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SourcePage(),
      routes: {
        '/detail': (context) => DestinationPage(),
      },
    );
  }
}

class SourcePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Asal')),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detail');
        },
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 50,
          ),
        ),
      ),
    );
  }
}

class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Tujuan')),
      body: Center(
        child: Hero(
          tag: 'avatarTag',
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 150,
          ),
        ),
      ),
    );
  }
}
