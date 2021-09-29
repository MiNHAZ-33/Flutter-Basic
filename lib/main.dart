import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:home_app/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My App', home: SplashScreen());
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
        child: Column(
          children: [
            const Text(
              'I am Text Widget with some styling!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                //backgroundColor: Colors.green,
                letterSpacing: 10,
                wordSpacing: 10,
                shadows: [
                  Shadow(
                      color: Colors.purpleAccent,
                      offset: Offset(30, 30),
                      blurRadius: 10),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'I am a rich text !',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 10,
                  wordSpacing: 10,
                  shadows: [
                    Shadow(
                      color: Colors.lime,
                      offset: Offset(20, 30),
                      blurRadius: 10,
                    ),
                  ],
                ),
                children: [
                  TextSpan(
                    text: 'Click Me!',
                    style: TextStyle(color: Colors.redAccent, fontSize: 30),
                  ),
                ],
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(fontSize: 50, color: Colors.pinkAccent),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('I am fading'),
                  FlickerAnimatedText('Look I am flickering'),
                  ScaleAnimatedText('I am scaling'),
                  TyperAnimatedText('I am a typer'),
                  WavyAnimatedText('I am waving')
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: 'Exit'),
        ],
      ),
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
