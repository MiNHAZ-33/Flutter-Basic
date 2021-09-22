import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My App', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _count = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Material(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            buildMenuItem(text: 'Home', icon: Icons.home),
            buildMenuItem(
                text: 'Notification', icon: Icons.notifications_active_rounded),
            buildMenuItem(text: 'Settings', icon: Icons.settings),
          ],
        ),
      )),
      appBar: AppBar(
        title: Text('Home Appbar'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Text('You pressed your buttons $_count times'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        child: Icon(
          Icons.add_reaction_sharp,
          color: Colors.amberAccent,
        ),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

Widget buildMenuItem({required String text, required IconData icon}) {
  final color = Colors.white;
  final hovercolor = Colors.white;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(text, style: TextStyle(color: color)),
    onTap: () {},
  );
}
