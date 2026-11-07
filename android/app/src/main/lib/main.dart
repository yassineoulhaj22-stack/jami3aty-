import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Jami3tyApp());
}

class Jami3tyApp extends StatelessWidget {
  const Jami3tyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jami3ty',
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
    );
  }
}
