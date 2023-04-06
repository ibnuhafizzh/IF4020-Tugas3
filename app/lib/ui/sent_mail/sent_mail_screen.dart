import 'package:app/ui/compose_mail/compose_mail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SentEmailScreen extends StatelessWidget {
  const SentEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sent Mail'),
      ),
      body: Center(
        child: Text('Welcome to Sent Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ComposeEmailScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
