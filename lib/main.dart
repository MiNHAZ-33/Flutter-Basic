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
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text('Drawer header'),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Appbar'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
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
