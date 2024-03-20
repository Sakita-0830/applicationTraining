import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '課題：足し算,引き算'),
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
  int _plus1 = 0;
  int _plus2 = 0;
  int _kake2 = 2;

  void _plus1Counter() {
    setState(() {
      _plus1++;
    });
  }

  void _plus2Counter() {
    setState(() {
      _plus2 += 2;
    });
  }

  void _kake2Counter() {
    setState(() {
      _kake2 *= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '+1,+2,x2を押すと数字が変化する',
            ),
            TextButton(
              onPressed: _plus1Counter,
              child: Text('+1'),
            ),
            Text(
              '$_plus1',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: _plus2Counter,
              child: Text('+2'),
            ),
            Text(
              '$_plus2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: _kake2Counter,
              child: Text('×2'),
            ),
            Text(
              '$_kake2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _plus1Counter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
