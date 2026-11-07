import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Étudiant")),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Center(child: CircleAvatar(radius: 60, backgroundColor: Color(0xFF6200EE), child: Icon(Icons.person, size: 70, color: Colors.white))),
          const SizedBox(height: 20),
          const Text("Amine Oulhaj", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Text("Master Informatique - Year 1"),
          const Divider(height: 40),
          const ListTile(leading: Icon(Icons.school), title: Text("Université de Rabat")),
          const ListTile(leading: Icon(Icons.email), title: Text("amine@jami3ty.ac.ma")),
          const ListTile(leading: Icon(Icons.lock), title: Text("Paramètres de sécurité")),
        ],
      ),
    );
  }
}
