import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/second': (context) => const SecondPage(),
      },
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Page'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter something'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Item 1'),
                Text('Item 2'),
              ],
            ),
            const Center(
              child: Text('Centered Text'),
            ),
            Image.network(
                'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcRxtoLFJ68jfbAEvAJ3jwBEiyuacM_lJx-JRjsWErdss9rj9C60Pj0QtJ-2YHtqiqxCeXskTGW37aXH7oY'),
          ],
        ),
      ),
    );
  }
}
