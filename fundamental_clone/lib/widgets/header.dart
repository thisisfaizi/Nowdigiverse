import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              // Logo
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E3A8A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'F',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Fundamental',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Desktop Navigation
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildNavItem('Home', true),
                      _buildNavItem('Services', false),
                      _buildNavItem('About', false),
                      _buildNavItem('Contact', false),
                    ],
                  ),
                ),
              
              // CTA Button
              if (MediaQuery.of(context).size.width > 768)
                ElevatedButton(
                  onPressed: () {
                    // Handle contact action
                  },
                  child: const Text('Get Started'),
                ),
              
              // Mobile Menu Button
              if (MediaQuery.of(context).size.width <= 768)
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isMenuOpen = !_isMenuOpen;
                    });
                  },
                  icon: Icon(_isMenuOpen ? Icons.close : Icons.menu),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        onPressed: () {
          // Handle navigation
        },
        style: TextButton.styleFrom(
          foregroundColor: isActive ? const Color(0xFF1E3A8A) : const Color(0xFF6B7280),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}