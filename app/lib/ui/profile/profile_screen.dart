import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserData _userData = UserData(
    fullName: 'John Doe',
    email: 'johndoe@example.com',
    birthday: DateTime(1990, 1, 1),
    gender: 'Male',
    phone: '+1 (123) 456-7890',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 48.0),
          CircleAvatar(
            radius: 48.0,
            backgroundColor: Colors.grey[300],
            child: Text(
              _userData.getInitials(),
              style: TextStyle(fontSize: 32.0),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            _userData.fullName,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 8.0),
          Text(
            _userData.email,
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 24.0),
          ListTile(
            leading: Icon(Icons.cake),
            title: Text('Birthday'),
            subtitle: Text(_userData.getBirthdayString()),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Gender'),
            subtitle: Text(_userData.gender),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text(_userData.phone),
          ),
        ],
      ),
    );
  }
}

class UserData {
  String fullName;
  String email;
  DateTime birthday;
  String gender;
  String phone;

  UserData({
    required this.fullName,
    required this.email,
    required this.birthday,
    required this.gender,
    required this.phone,
  });

  String getInitials() {
    List<String> nameParts = fullName.split(' ');
    String initials = '';
    nameParts.forEach((part) => initials += part[0]);
    return initials.toUpperCase();
  }

  String getBirthdayString() {
    return '${birthday.day}/${birthday.month}/${birthday.year}';
  }
}
