#!/bin/bash

# Set Flutter path
export PATH="$PATH:/workspace/flutter/bin"

# Check if Flutter is available
if ! command -v flutter &> /dev/null; then
    echo "Flutter not found. Please install Flutter first."
    exit 1
fi

# Get dependencies
echo "Getting dependencies..."
flutter pub get

# Build the web app
echo "Building web app..."
flutter build web

# Start the server
echo "Starting server on http://localhost:8080"
echo "Press Ctrl+C to stop the server"
cd build/web && python3 -m http.server 8080