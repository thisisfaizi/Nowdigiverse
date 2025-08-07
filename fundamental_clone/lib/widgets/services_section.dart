import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: const Color(0xFFF9FAFB),
      child: Column(
        children: [
          // Section Header
          const Text(
            'Our Services',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'We offer comprehensive digital solutions to help your business thrive',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF6B7280),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 64),
          
          // Services Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: MediaQuery.of(context).size.width > 768 ? 3 : 1,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: MediaQuery.of(context).size.width > 768 ? 1.2 : 1.5,
            children: [
              _buildServiceCard(
                icon: Icons.web,
                title: 'Web Development',
                description: 'Custom websites and web applications built with modern technologies and best practices.',
                color: const Color(0xFF1E3A8A),
              ),
              _buildServiceCard(
                icon: Icons.phone_android,
                title: 'Mobile Development',
                description: 'Native and cross-platform mobile applications for iOS and Android platforms.',
                color: const Color(0xFF059669),
              ),
              _buildServiceCard(
                icon: Icons.cloud,
                title: 'Cloud Solutions',
                description: 'Scalable cloud infrastructure and deployment solutions for your applications.',
                color: const Color(0xFFDC2626),
              ),
              _buildServiceCard(
                icon: Icons.design_services,
                title: 'UI/UX Design',
                description: 'Beautiful and intuitive user interfaces designed with user experience in mind.',
                color: const Color(0xFF7C3AED),
              ),
              _buildServiceCard(
                icon: Icons.analytics,
                title: 'Digital Marketing',
                description: 'Strategic digital marketing campaigns to grow your online presence and reach.',
                color: const Color(0xFFEA580C),
              ),
              _buildServiceCard(
                icon: Icons.support_agent,
                title: 'Consulting',
                description: 'Expert technology consulting to help you make informed digital decisions.',
                color: const Color(0xFF0891B2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: color,
              size: 28,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF6B7280),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}