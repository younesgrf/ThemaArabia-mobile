import 'package:flutter/material.dart';
import 'tablewidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('About Us Page'),
    Text('Contact Us Page'),
    TableWidget(articles: [
      {
        'id': 1,
        'name': 'yahia slimani',
        'title': 'djamal belmadi',
        'desc':
        'Djamal belmadi est un entrainer de l\'equipe natinal de l\'algerie , il est gagné la coup d\'afrique en 2019....',
        'cat': 'sport'
      },
      {
        'id': 2,
        'name': 'yahia slimani',
        'title': 'djamal belmadi',
        'desc':
        'Djamal belmadi est un entrainer de l\'equipe natinal de l\'algerie , il est gagné la coup d\'afrique en 2019....',
        'cat': 'sport'
      },
      {
        'id': 3,
        'name': 'yahia slimani',
        'title': 'djamal belmadi',
        'desc':
        'Djamal belmadi est un entrainer de l\'equipe natinal de l\'algerie , il est gagné la coup d\'afrique en 2019....',
        'cat': 'sport'
      },
    ]),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ThemaArabia',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton de déconnexion
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contact Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'My Articles',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black),
        onTap: _onItemTapped,
      ),
    );
  }
}