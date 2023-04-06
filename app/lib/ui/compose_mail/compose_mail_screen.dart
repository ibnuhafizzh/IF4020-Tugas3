import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ComposeEmailScreen extends StatelessWidget {
  const ComposeEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose Email'),
      ),
      body: Center(
        child: Text('Welcome to Compose email Screen'),
      ),
    );
  }
}
