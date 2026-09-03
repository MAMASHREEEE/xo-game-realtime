@echo off
REM XO Game Realtime - APK Build Script for Windows
REM This script builds a release APK

echo .
echo 🎮 Building XO Game Realtime APK...
echo .

REM Check if gradle wrapper exists
if not exist "gradlew.bat" (
    echo ❌ Error: gradlew.bat not found. Make sure you're in the project root.
    pause
    exit /b 1
)

echo 📦 Building debug APK...
call gradlew.bat assembleDebug

if %ERRORLEVEL% EQU 0 (
    echo .
    echo ✅ Build successful!
    echo 📲 APK Location: app\build\outputs\apk\debug\app-debug.apk
    echo .
    echo 💡 To install on device:
    echo    adb install app\build\outputs\apk\debug\app-debug.apk
    echo .
    pause
) else (
    echo .
    echo ❌ Build failed! Check the errors above.
    echo .
    pause
    exit /b 1
)
