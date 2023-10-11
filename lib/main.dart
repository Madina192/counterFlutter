import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$counter",
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text('My App'),
        ),
        drawer: Drawer(),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                }),
            FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                }),
          ],
        ));
  }
}
