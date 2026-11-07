import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final auth = LocalAuthentication();

  Future<void> _bioAuth() async {
    bool authenticated = await auth.authenticate(
      localizedReason: 'Accès étudiant sécurisé',
      options: const AuthenticationOptions(biometricOnly: true),
    );
    if (authenticated && mounted) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Accès refusé"), backgroundColor: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6200EE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            const Text("JAMI3TY", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 4)),
            const SizedBox(height: 60),
            ElevatedButton.icon(
              icon: const Icon(Icons.fingerprint),
              label: const Text("BIOMETRIC LOGIN"),
              style: ElevatedButton.styleFrom(foregroundColor: const Color(0xFF6200EE), padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              onPressed: _bioAuth,
            ),
          ],
        ),
      ),
    );
  }
}
