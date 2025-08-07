import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          // Section Header
          const Text(
            'About Us',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'We are passionate about creating digital solutions that make a difference',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF6B7280),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 64),
          
          // Content Row
          Row(
            children: [
              // Left Column - Image
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    margin: const EdgeInsets.only(right: 48),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.group,
                        size: 120,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ),
                ),
              
              // Right Column - Text
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Story',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Founded in 2019, Fundamental has been at the forefront of digital innovation. We started with a simple mission: to help businesses leverage technology to achieve their goals.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Today, we\'re a team of passionate developers, designers, and strategists who believe that great technology should be accessible to everyone. We work closely with our clients to understand their unique challenges and create solutions that drive real results.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),
                    
                    // Values
                    const Text(
                      'Our Values',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildValue('Innovation', 'We constantly explore new technologies and approaches'),
                    _buildValue('Quality', 'We deliver excellence in every project we undertake'),
                    _buildValue('Collaboration', 'We work closely with our clients to achieve shared goals'),
                    _buildValue('Integrity', 'We maintain the highest standards of professional ethics'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildValue(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 8, right: 12),
            decoration: const BoxDecoration(
              color: Color(0xFF1E3A8A),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}