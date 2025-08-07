# Fundamental.bg Clone

A Flutter web application that replicates the design and functionality of the Fundamental.bg website. This project demonstrates modern web development practices using Flutter and Dart.

## 🚀 Features

### Design & UI
- **Modern, Responsive Design**: Fully responsive layout that works on desktop, tablet, and mobile devices
- **Professional Color Scheme**: Uses a sophisticated blue color palette (#1E3A8A) with proper contrast ratios
- **Typography**: Clean, readable fonts with proper hierarchy
- **Smooth Animations**: Subtle animations and transitions for better user experience

### Sections
1. **Header Navigation**: 
   - Logo and brand identity
   - Responsive navigation menu
   - Call-to-action button
   - Mobile hamburger menu

2. **Hero Section**:
   - Compelling headline and description
   - Dual call-to-action buttons
   - Statistics showcase
   - Visual placeholder

3. **Services Section**:
   - Grid layout of service cards
   - Icons and descriptions for each service
   - Hover effects and visual feedback

4. **About Section**:
   - Company story and mission
   - Core values presentation
   - Visual elements and layout

5. **Contact Section**:
   - Functional contact form with validation
   - Contact information display
   - Form submission feedback

6. **Footer**:
   - Company information
   - Quick links and services
   - Social media icons
   - Copyright information

### Technical Features
- **Form Validation**: Contact form with proper validation
- **Responsive Design**: Adapts to different screen sizes
- **State Management**: Proper widget state management
- **Clean Architecture**: Organized code structure with separate widgets
- **Accessibility**: Proper semantic markup and keyboard navigation

## 🛠️ Technology Stack

- **Framework**: Flutter 3.24.5
- **Language**: Dart 3.5.4
- **Platform**: Web (Flutter Web)
- **Dependencies**:
  - `http`: ^1.1.0 - For API calls
  - `url_launcher`: ^6.2.4 - For opening external links
  - `cached_network_image`: ^3.3.1 - For image caching
  - `flutter_staggered_grid_view`: ^0.7.0 - For advanced grid layouts
  - `smooth_page_indicator`: ^1.1.0 - For page indicators

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point and theme configuration
├── screens/
│   └── home_screen.dart      # Main home screen
├── widgets/
│   ├── header.dart           # Navigation header
│   ├── hero_section.dart     # Hero section with CTA
│   ├── services_section.dart # Services showcase
│   ├── about_section.dart    # About company section
│   ├── contact_section.dart  # Contact form and info
│   └── footer.dart          # Footer with links
├── models/                   # Data models (future use)
└── utils/                   # Utility functions (future use)
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.24.5 or higher)
- Dart SDK (3.5.4 or higher)
- Web browser for testing

### Installation

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd fundamental_clone
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run -d web-server --web-port 8080
   ```

4. **Access the application**:
   Open your browser and navigate to `http://localhost:8080`

### Alternative Run Methods

- **For Chrome**: `flutter run -d chrome`
- **For Edge**: `flutter run -d edge`
- **For Firefox**: `flutter run -d firefox`

## 🎨 Design System

### Colors
- **Primary Blue**: #1E3A8A
- **Text Dark**: #1F2937
- **Text Gray**: #6B7280
- **Background Light**: #F9FAFB
- **Background Dark**: #1F2937

### Typography
- **Headlines**: Bold, 24-48px
- **Body Text**: Regular, 14-18px
- **Buttons**: Semi-bold, 16px

### Spacing
- **Section Padding**: 80px vertical, 24px horizontal
- **Component Spacing**: 16-32px
- **Grid Gap**: 24px

## 🔧 Customization

### Adding New Sections
1. Create a new widget in the `lib/widgets/` directory
2. Import and add it to the `home_screen.dart` file
3. Follow the existing design patterns

### Modifying Colors
1. Update the theme in `main.dart`
2. Modify color constants in individual widgets
3. Ensure proper contrast ratios for accessibility

### Adding Content
1. Update text content in the respective widget files
2. Add images to the `assets/` directory
3. Update the `pubspec.yaml` to include new assets

## 📱 Responsive Design

The application is fully responsive and includes:
- **Desktop**: Full layout with all sections visible
- **Tablet**: Adjusted spacing and layout
- **Mobile**: Stacked layout with mobile navigation

### Breakpoints
- **Desktop**: > 768px
- **Mobile**: ≤ 768px

## 🧪 Testing

### Manual Testing
1. Test all form validations
2. Verify responsive design on different screen sizes
3. Check navigation functionality
4. Test button interactions

### Automated Testing (Future)
```bash
flutter test
```

## 🚀 Deployment

### Web Deployment
1. Build the application:
   ```bash
   flutter build web
   ```

2. Deploy the `build/web` directory to your hosting service

### Recommended Hosting
- **Firebase Hosting**: Easy deployment with Flutter
- **Netlify**: Simple drag-and-drop deployment
- **Vercel**: Fast deployment with Git integration

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is for educational purposes and demonstrates Flutter web development capabilities.

## 🙏 Acknowledgments

- Inspired by the design of Fundamental.bg
- Built with Flutter and Dart
- Uses Material Design principles

---

**Note**: This is a demonstration project and is not affiliated with the original Fundamental.bg website.
