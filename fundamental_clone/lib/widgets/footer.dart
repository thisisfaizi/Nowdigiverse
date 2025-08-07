import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1F2937),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          // Main Footer Content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Company Info
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'F',
                              style: TextStyle(
                                color: Color(0xFF1E3A8A),
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
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Building digital solutions that matter. We help businesses grow and succeed in the modern world through innovative technology and strategic thinking.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF9CA3AF),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Social Media Icons
                    Row(
                      children: [
                        _buildSocialIcon(Icons.facebook, 'Facebook'),
                        const SizedBox(width: 16),
                        _buildSocialIcon(Icons.flutter_dash, 'Twitter'),
                        const SizedBox(width: 16),
                        _buildSocialIcon(Icons.business, 'LinkedIn'),
                        const SizedBox(width: 16),
                        _buildSocialIcon(Icons.camera_alt, 'Instagram'),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Quick Links
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quick Links',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildFooterLink('Home'),
                      _buildFooterLink('Services'),
                      _buildFooterLink('About'),
                      _buildFooterLink('Contact'),
                      _buildFooterLink('Portfolio'),
                    ],
                  ),
                ),
              
              // Services
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildFooterLink('Web Development'),
                      _buildFooterLink('Mobile Development'),
                      _buildFooterLink('Cloud Solutions'),
                      _buildFooterLink('UI/UX Design'),
                      _buildFooterLink('Digital Marketing'),
                    ],
                  ),
                ),
              
              // Contact Info
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildContactInfo('hello@fundamental.bg'),
                      _buildContactInfo('+359 888 123 456'),
                      _buildContactInfo('Sofia, Bulgaria'),
                    ],
                  ),
                ),
            ],
          ),
          
          // Divider
          const SizedBox(height: 32),
          Container(
            height: 1,
            color: const Color(0xFF374151),
          ),
          const SizedBox(height: 24),
          
          // Copyright
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '© 2024 Fundamental. All rights reserved.',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF9CA3AF),
                ),
              ),
              if (MediaQuery.of(context).size.width > 768)
                Row(
                  children: [
                    _buildFooterLink('Privacy Policy'),
                    const SizedBox(width: 24),
                    _buildFooterLink('Terms of Service'),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String label) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF374151),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        onPressed: () {
          // Handle social media link
        },
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        tooltip: label,
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextButton(
        onPressed: () {
          // Handle navigation
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(0, 0),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF9CA3AF),
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF9CA3AF),
        ),
      ),
    );
  }
}