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
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text('Minhaz'),
                accountEmail: Text('minhaz@outlook.com'),
                //currentAccountPicture: NetworkImage('assets\img\1.jpg'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/img/1.jpg'),
                )),
            buildMenuItem(text: 'Home', icon: Icons.home),
            buildMenuItem(
                text: 'Notification', icon: Icons.notifications_active_rounded),
            buildMenuItem(text: 'Settings', icon: Icons.settings),
          ],
        ),
      )),
      appBar: AppBar(
        title: const Text('Home Appbar'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          //child: Text('You pressed your buttons $_count times'),
          child: Image(
        image: AssetImage('assets/img/2.jpg'),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}

Widget buildMenuItem({required String text, required IconData icon}) {
  final color = Colors.white;
  final hovercolor = Colors.black;

  return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(text, style: TextStyle(color: color)),
      onTap: () {});
}
