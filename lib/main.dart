import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment
            .center, // Mengatur elemen agar berada di tengah vertikal
        children: [
          // Row di atas
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.orange,
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.blue,
              ),
            ],
          ),

          const SizedBox(height: 20), // Spasi antara Row atas dan bawah

          // Row di bawah
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.purple,
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10),
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
