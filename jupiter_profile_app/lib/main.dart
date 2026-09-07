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
      title: 'Jupiter Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 183, 58, 108),
        ),
      ),
      home: const MyHomePage(title: 'My Profile'),
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
        // This controls the color of the app bar.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        // This displays the title passed from MyHomePage.
        title: Text(widget.title),

        centerTitle: true,
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(255, 219, 65, 127),
              child: Icon(Icons.person, size: 55, color: Colors.white),
            ),
            const SizedBox(height: 15),

            const Text(
              'Jupiter Lebrun',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            const Text(
              'Computing Major & Flutter Beginner',
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),

            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 10),
                Text('Atlanta, GA, USA'),
                SizedBox(width: 15),
              
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text('jl00233@my.westga.edu'),
              ],
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Follow me please'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Send me a message'),
            ),
          ],
        ),
      ),
    );
  }
}
