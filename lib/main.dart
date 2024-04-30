import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyan,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green, Colors.cyan], // Change the colors as needed
            ),
          ),
          child: const Center(
            child: ProfileWidget(
              name: 'Md. Mazedur Rahaman',
              email: 'alsaaditsolution@gmail.com',
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String name;
  final String email;

  const ProfileWidget({
    super.key,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/aboutme.png'),
          ),
          const SizedBox(height: 20),
          Text(
            'Name: $name',
            style: const TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Email: $email',
            style: const TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
