import 'package:flutter/material.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: const Color(0xFFF9FAFB),
      child: Column(
        children: [
          // Section Header
          const Text(
            'Get In Touch',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Ready to start your next project? Let\'s talk about how we can help.',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF6B7280),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 64),
          
          // Contact Content
          Row(
            children: [
              // Left Column - Contact Form
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(32),
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Send us a message',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937),
                          ),
                        ),
                        const SizedBox(height: 24),
                        
                        // Name Field
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Your Name',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        
                        // Email Field
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        
                        // Message Field
                        TextFormField(
                          controller: _messageController,
                          maxLines: 4,
                          decoration: const InputDecoration(
                            labelText: 'Message',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your message';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 24),
                        
                        // Submit Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Handle form submission
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Message sent successfully!'),
                                    backgroundColor: Color(0xFF059669),
                                  ),
                                );
                                _nameController.clear();
                                _emailController.clear();
                                _messageController.clear();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            child: const Text('Send Message'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              // Right Column - Contact Info
              if (MediaQuery.of(context).size.width > 768)
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Contact Information',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1F2937),
                          ),
                        ),
                        const SizedBox(height: 32),
                        
                        _buildContactInfo(
                          icon: Icons.email,
                          title: 'Email',
                          content: 'hello@fundamental.bg',
                        ),
                        const SizedBox(height: 24),
                        
                        _buildContactInfo(
                          icon: Icons.phone,
                          title: 'Phone',
                          content: '+359 888 123 456',
                        ),
                        const SizedBox(height: 24),
                        
                        _buildContactInfo(
                          icon: Icons.location_on,
                          title: 'Address',
                          content: 'Sofia, Bulgaria\n1000 Sofia Center',
                        ),
                        const SizedBox(height: 24),
                        
                        _buildContactInfo(
                          icon: Icons.access_time,
                          title: 'Working Hours',
                          content: 'Monday - Friday\n9:00 AM - 6:00 PM',
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF1E3A8A).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF1E3A8A),
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
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
                content,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6B7280),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}