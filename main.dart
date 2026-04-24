import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import 'screens/home_screen.dart';
import 'screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ApparelSuperstoreApp());
}

class ApparelSuperstoreApp extends StatelessWidget {
  const ApparelSuperstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: MaterialApp(
        title: 'LUXE Apparel',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1A1A2E),
            brightness: Brightness.light,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xFF1A1A2E),
            elevation: 0,
            titleTextStyle: GoogleFonts.playfairDisplay(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1A2E),
            ),
          ),
        ),
        home: LoginPage(),
      ),
    );
  }
}
