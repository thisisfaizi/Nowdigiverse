import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          // Main Content
          Row(
            children: [
              // Left Column - Text Content
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Building Digital\nSolutions That\nMatter',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2937),
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'We create innovative digital solutions that help businesses grow and succeed in the modern world. Our team of experts delivers cutting-edge technology with a focus on user experience and business value.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle primary CTA
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          child: const Text('Get Started'),
                        ),
                        const SizedBox(width: 16),
                        OutlinedButton(
                          onPressed: () {
                            // Handle secondary CTA
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                            side: const BorderSide(color: Color(0xFF1E3A8A)),
                            foregroundColor: const Color(0xFF1E3A8A),
                            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          child: const Text('Learn More'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    // Stats
                    Row(
                      children: [
                        _buildStat('500+', 'Projects Completed'),
                        const SizedBox(width: 48),
                        _buildStat('50+', 'Happy Clients'),
                        const SizedBox(width: 48),
                        _buildStat('5+', 'Years Experience'),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Right Column - Image/Visual
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 400,
                    margin: const EdgeInsets.only(left: 48),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.rocket_launch,
                        size: 120,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String number, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E3A8A),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}