import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_real/common/routes/routes.dart';
import 'package:whatsapp_real/common/theme/dark_theme.dart';
import 'package:whatsapp_real/common/theme/light_theme.dart';
import 'package:whatsapp_real/feature/auth/pages/login_page.dart';
import 'package:whatsapp_real/feature/auth/pages/user_info_page.dart';
import 'package:whatsapp_real/feature/auth/pages/verification_page.dart';
import 'package:whatsapp_real/feature/welcome/pages/welcome_page.dart';
import 'package:whatsapp_real/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Future.delayed(Duration(seconds: 2));
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      title: 'WhatsApp Real',
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
