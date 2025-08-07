import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';
import '../widgets/about_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: const Column(
          children: [
            Header(),
            HeroSection(),
            ServicesSection(),
            AboutSection(),
            ContactSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}