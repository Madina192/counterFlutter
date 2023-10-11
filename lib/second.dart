import 'package:flutter/material.dart';

void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home page',
      theme: ThemeData(useMaterial3: true),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int counter = 0;

  void reset() => setState(() {
        counter = 0;
      });
  int greetingIndex = 0;
  List<String> greetings = ['Hello', 'Hi', 'Ciao', 'Nihao'];

  void setGreeting() {
    setState(() {
      if (greetingIndex >= greetings.length - 1) {
        greetingIndex = 0;
      } else {
        greetingIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${greetings[greetingIndex]}'),
              Text(
                "$counter",
                style: TextStyle(fontSize: 50),
              ),
              MaterialButton(
                  child: Icon(Icons.accessibility_new_sharp),
                  onPressed: () {
                    setGreeting();
                  })
            ],
          ),
        ),
        floatingActionButton: Column(
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
          ],
        ));
  }
}
