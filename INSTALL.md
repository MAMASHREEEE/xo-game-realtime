# 🎮 XO Game Realtime - Installation Guide

## Quick APK Build & Install

### Option 1: Automatic Build (Easiest)

#### On Windows:
1. Extract the project folder
2. Open Command Prompt in the project folder
3. Run:
   ```bash
   build-apk.bat
   ```
4. The APK will be created at: `app/build/outputs/apk/debug/app-debug.apk`

#### On Mac/Linux:
1. Extract the project folder
2. Open Terminal in the project folder
3. Make the script executable:
   ```bash
   chmod +x build-apk.sh
   ```
4. Run:
   ```bash
   ./build-apk.sh
   ```
5. The APK will be created at: `app/build/outputs/apk/debug/app-debug.apk`

### Option 2: Manual Build with Android Studio

1. **Open Android Studio**
2. **File** → **Open** → Select the project folder
3. Wait for Gradle to sync
4. **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
5. APK will be generated at: `app/build/outputs/apk/debug/app-debug.apk`

### Option 3: Manual Build with Gradle Command

1. Open Command Prompt/Terminal in project folder
2. Run:
   ```bash
   ./gradlew assembleDebug
   ```
   (Or `gradlew.bat assembleDebug` on Windows)
3. APK created at: `app/build/outputs/apk/debug/app-debug.apk`

---

## Install APK on Device

### Method 1: Direct Transfer (Easiest)
1. Connect Android phone to PC via USB
2. Enable **USB Debugging** on your phone:
   - Settings → Developer Options → USB Debugging (ON)
3. Copy `app-debug.apk` to your phone
4. Open file manager on phone and tap the APK
5. Click **Install**

### Method 2: Using ADB (Advanced)
1. Connect phone via USB
2. Open Command Prompt in the project folder
3. Run:
   ```bash
   adb install app/build/outputs/apk/debug/app-debug.apk
   ```
4. Wait for installation to complete

### Method 3: Android Studio (Easiest with Studio)
1. Build the APK (see above)
2. Click **Run** (▶️) in Android Studio
3. Select your device
4. App will install automatically

---

## Prerequisites for Building

- **Android SDK** (API 24 minimum, API 34 recommended)
- **Java JDK 11** or higher
- **1 GB** free disk space for Gradle
- Internet connection (first build downloads dependencies)

---

## Firebase Setup (Important!)

Before playing, you need to setup Firebase:

1. Go to https://console.firebase.google.com
2. Create a new project (name it "XO Game Realtime")
3. Enable these services:
   - ✅ **Realtime Database**
   - ✅ **Authentication** (Anonymous sign-in)
4. Download `google-services.json`
5. Place it in: `app/google-services.json`
6. Rebuild the APK

---

## Build Errors?

### "gradle command not found"
- **Windows**: Use `gradlew.bat` instead of `./gradlew`
- **Mac/Linux**: Run `chmod +x gradlew` first

### "Android SDK not found"
- Open Android Studio
- Tools → SDK Manager → Install required SDKs

### "google-services.json not found"
- Download from Firebase Console
- Place in `app/` folder
- Rebuild

### Port already in use
- Another app is using the emulator port
- Close Android Studio and try again

---

## What's the APK Size?

- **Debug APK**: ~50-70 MB
- **Release APK**: ~30-40 MB (optimized)

---

## Need Help?

- Check Firebase console for errors
- Make sure internet connection is working
- Try building in Android Studio first
- Check Android version compatibility (7.0+)

---

**Made with ❤️ for gaming!** 🎮
