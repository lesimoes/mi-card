import 'package:flutter/material.dart';
import 'package:mi_card/src/widgets/ProfileInfo.dart';
import 'src/widgets/CardInfo.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final name = 'Leandro Simoes';
  final role = 'Software Developer';
  final phone = '88 9999-8888';
  final mail = 'lesimoes0@gmail.com';
  final imageSrc = 'lesimoes.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileInfo(
                name: name,
                role: role,
                avatar: AssetImage('images/$imageSrc'),
              ),
              SizedBox(
                height: 20,
                width: 120,
                child: Divider(color: Colors.teal.shade100),
              ),
              CardInfo(
                text: phone,
                icon: Icons.phone,
              ),
              CardInfo(
                text: mail,
                icon: Icons.mail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
