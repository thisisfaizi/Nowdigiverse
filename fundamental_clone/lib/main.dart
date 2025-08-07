import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FundamentalApp());
}

class FundamentalApp extends StatelessWidget {
  const FundamentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fundamental.bg',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF1E3A8A),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F2937),
          ),
          headlineMedium: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F2937),
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F2937),
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2937),
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1F2937),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Color(0xFF4B5563),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFF4B5563),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E3A8A),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF1F2937),
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
