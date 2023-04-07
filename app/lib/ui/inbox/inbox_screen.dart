import 'package:app/ui/compose_mail/compose_mail_screen.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  List<Email> _emails = [
    Email(
        sender: 'john@example.com',
        subject: 'Meeting tomorrow',
        message: 'Hi, let\'s meet tomorrow at 2 pm.'),
    Email(
        sender: 'jane@example.com',
        subject: 'New product launch',
        message: 'Hello, we\'re launching a new product next week.'),
    Email(
        sender: 'steve@example.com',
        subject: 'Project status update',
        message: 'Hey, just wanted to update you on the project status.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: _emails.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(_emails[index].sender.substring(0, 1)),
            ),
            title: Text(_emails[index].sender),
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

class Email {
  final String sender;
  final String subject;
  final String message;

  Email({required this.sender, required this.subject, required this.message});
}
