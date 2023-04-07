import 'package:app/ui/compose_mail/compose_mail_screen.dart';
import 'package:flutter/material.dart';

class SentMailScreen extends StatefulWidget {
  const SentMailScreen({Key? key}) : super(key: key);

  @override
  _SentMailScreenState createState() => _SentMailScreenState();
}

class _SentMailScreenState extends State<SentMailScreen> {
  List<SentEmail> _emails = [
    SentEmail(
        to: 'john@example.com',
        subject: 'Meeting tomorrow',
        message: 'Hi, let\'s meet tomorrow at 2 pm.'),
    SentEmail(
        to: 'jane@example.com',
        subject: 'New product launch',
        message: 'Hello, we\'re launching a new product next week.'),
    SentEmail(
        to: 'steve@example.com',
        subject: 'Project status update',
        message: 'Hey, just wanted to update you on the project status.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sent'),
      ),
      body: ListView.builder(
        itemCount: _emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(_emails[index].to.substring(0, 1)),
            ),
            title: Text("To: ${_emails[index].to}"),
            subtitle: Text(_emails[index].subject),
            trailing: Text('10:30 am'),
            onTap: () {
              // Navigate to email detail screen
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ComposeMailScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SentEmail {
  final String to;
  final String subject;
  final String message;

  SentEmail({required this.to, required this.subject, required this.message});
}
