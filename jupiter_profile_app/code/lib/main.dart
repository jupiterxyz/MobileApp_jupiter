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

      
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150,
              color: Theme.of(context).colorScheme.inversePrimary,
              alignment: Alignment.topLeft,
              //padding: const EdgeInsets.all(40.0),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  fontSize: 20,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 15),


            ListTile(
              leading: const Icon(Icons.palette),
              title: const Text('My Hobbies'),
              onTap:() {
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => const HobbiesScreen(), 
                  ),
                );
              },
            ),  

            const SizedBox(height: 10),

            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Favorite Pictures'),
              onTap:() {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => const FavoritePicturesScreen(), 
                  ),
                );
              },
            ),  
          ],
        ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HobbiesScreen()),
                );
              },
              child: const Text('My Hobbies'),
            ),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritePicturesScreen()),
                );
              },
              child: const Text('My Favorite Pictures'),
            ),
          ],
        ),
      ),
    );
  }
}


class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Hobbies'),
      ),
      body: const Center(
        child: Text('This is the hobbies screen.'),
      ),
    );
  }
}

class FavoritePicturesScreen extends StatelessWidget {
  const FavoritePicturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorite Pictures'),
      ),
      body: const Center(
        child: Text('This is the favorite pictures screen.'),
      ),
    );
  }
}
