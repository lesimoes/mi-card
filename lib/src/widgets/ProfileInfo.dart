import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo(
      {@required this.name, @required this.role, @required this.avatar});

  final name;
  final role;
  final AssetImage avatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: avatar,
        ),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          role,
          style: TextStyle(
            fontFamily: 'SourceSans',
            color: Colors.teal.shade100,
            letterSpacing: 2.5,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
