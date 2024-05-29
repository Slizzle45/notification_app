import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const appTitle = 'Notification App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(fontFamily: "Nunito"),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const primaryColor = Color.fromARGB(255, 64, 114, 38);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePageView(), // Home page
    Center(child: Text('Option 1 Page')), // Option1 page
    Center(child: Text('Option 2 Page')), // Option2 page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: mainDrawer(context),
      body: _widgetOptions
          .elementAt(_selectedIndex), //returns the page you select from drawer
    );
  }

  /// Left-Side drawer opens with burger icon.
  Drawer mainDrawer(BuildContext context) {
    return Drawer(
      //listview
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            selected: _selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              _onItemTapped(0);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Option1'),
            selected: _selectedIndex == 1,
            onTap: () {
              // Update the state of the app
              _onItemTapped(1);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Option2'),
            selected: _selectedIndex == 2,
            onTap: () {
              // Update the state of the app
              _onItemTapped(2);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
