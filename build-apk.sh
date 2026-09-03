#!/bin/bash

# XO Game Realtime - APK Build Script
# This script builds a release APK

echo "🎮 Building XO Game Realtime APK..."
echo ""

# Check if gradle wrapper exists
if [ ! -f "gradlew" ]; then
    echo "❌ Error: gradlew not found. Make sure you're in the project root."
    exit 1
fi

# Make gradle wrapper executable
chmod +x gradlew

echo "📦 Building debug APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo "📲 APK Location: app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "💡 To install on device:"
    echo "   adb install app/build/outputs/apk/debug/app-debug.apk"
else
    echo ""
    echo "❌ Build failed! Check the errors above."
    exit 1
fi
