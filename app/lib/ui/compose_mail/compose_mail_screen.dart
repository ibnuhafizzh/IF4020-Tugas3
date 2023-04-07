import 'package:flutter/material.dart';

class ComposeMailScreen extends StatefulWidget {
  const ComposeMailScreen({Key? key}) : super(key: key);

  @override
  _ComposeMailScreenState createState() => _ComposeMailScreenState();
}

class _ComposeMailScreenState extends State<ComposeMailScreen> {
  bool _isEncrypted = false;
  bool _isSigned = false;
  TextEditingController _toController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  TextEditingController _keyController = TextEditingController();
  TextEditingController _privateKeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compose Email'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _toController,
                decoration: InputDecoration(
                  labelText: 'To:',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: 'Subject:',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _messageController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: 'Message:',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text('Encrypt Email:'),
                  SizedBox(width: 16.0),
                  Switch(
                    value: _isEncrypted,
                    onChanged: (value) {
                      setState(() {
                        _isEncrypted = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              _isEncrypted
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Encryption Key:'),
                        SizedBox(height: 8.0),
                        TextField(
                          controller: _keyController,
                          decoration: InputDecoration(
                            labelText: 'Key:',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
              Row(
                children: [
                  Text('Sign Email:'),
                  SizedBox(width: 16.0),
                  Switch(
                    value: _isSigned,
                    onChanged: (value) {
                      setState(() {
                        _isSigned = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              _isSigned
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Private Key:'),
                        SizedBox(height: 8.0),
                        TextField(
                          controller: _privateKeyController,
                          decoration: InputDecoration(
                            labelText: 'Key:',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // code to send email
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
