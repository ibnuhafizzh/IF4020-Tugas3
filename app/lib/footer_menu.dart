import 'package:app/ui/inbox/inbox_screen.dart';
import 'package:app/ui/profile/profile_screen.dart';
import 'package:app/ui/sent_mail/sent_mail_screen.dart';
import 'package:flutter/material.dart';

class FooterMenu extends StatefulWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  _FooterMenuState createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    InboxScreen(),
    SentEmailScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Sent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
