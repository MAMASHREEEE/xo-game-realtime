# ⚡ Quick Start - XO Game Realtime

## 5 Minutes to Play! 🎮

### Step 1: Setup (2 min)
```bash
# On your PC, open Command Prompt/Terminal and run:
git clone https://github.com/MAMASHREEEE/xo-game-realtime.git
cd xo-game-realtime
```

### Step 2: Firebase Setup (1 min)
1. Go to: https://console.firebase.google.com
2. Click "Create Project"
3. Name it "XO Game Realtime"
4. Enable **Realtime Database** + **Authentication**
5. Download `google-services.json`
6. Copy to: `app/google-services.json`

### Step 3: Build APK (2 min)

**Windows:**
```bash
build-apk.bat
```

**Mac/Linux:**
```bash
chmod +x build-apk.sh
./build-apk.sh
```

### Step 4: Install on Phone
1. Connect phone via USB
2. Enable USB Debugging (Settings → Developer Options)
3. Copy `app/build/outputs/apk/debug/app-debug.apk` to phone
4. Tap APK on phone → Install

### Step 5: Play! 🎯
- Open the app on your phone
- Enter your name
- Create game or join a room
- Play with a friend!

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Build fails | Make sure you have Android SDK 24+ installed |
| Can't find APK | Look in `app/build/outputs/apk/debug/` |
| App crashes | Check Firebase config in `app/google-services.json` |
| "Module not found" | Run `gradlew --refresh-dependencies` |

---

**Need detailed help?** See `INSTALL.md`
