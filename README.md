# XO Game Realtime 🎮

A real-time multiplayer Tic Tac Toe (XO) game for Android with online multiplayer support using Firebase.

## Features ✨

- **Real-time Multiplayer**: Play with friends online in real-time
- **Firebase Integration**: Real-time database synchronization
- **Beautiful UI**: Modern Material Design 3 with Jetpack Compose
- **Game Rooms**: Create or join game rooms
- **Live Updates**: See moves instantly as they happen
- **Dark Theme**: Eye-friendly dark theme

## Tech Stack 🛠️

- **Language**: Kotlin
- **UI**: Jetpack Compose with Material Design 3
- **Backend**: Firebase Realtime Database & Authentication
- **Architecture**: MVVM with StateFlow
- **Coroutines**: For async operations

## Project Structure 📁

```
app/
├── src/main/java/com/xogame/realtime/
│   ├── firebase/
│   │   └── FirebaseManager.kt        # Firebase operations
│   ├── models/
│   │   └── GameModels.kt             # Data classes
│   └── ui/
│       ├── MainActivity.kt            # Main activity
│       ├── GameScreenViewModel.kt     # Game logic & state
│       └── theme/
│           └── Theme.kt              # Material theme
├── res/
│   └── values/
│       └── strings.xml               # String resources
├── AndroidManifest.xml               # App manifest
└── google-services.json              # Firebase config
```

## Setup Instructions 🚀

### Prerequisites
- Android Studio (latest)
- Minimum SDK: 24 (Android 7.0)
- Target SDK: 34 (Android 14)
- Kotlin 1.9.0+

### Firebase Setup

1. Create a Firebase project at [console.firebase.google.com](https://console.firebase.google.com)
2. Enable Authentication (Anonymous sign-in)
3. Enable Realtime Database
4. Download `google-services.json` and place it in `app/` directory
5. Update your Firebase rules:

```json
{
  "rules": {
    "gameRooms": {
      ".read": true,
      ".write": true
    },
    "moves": {
      ".read": true,
      ".write": true
    },
    "players": {
      ".read": true,
      ".write": true
    }
  }
}
```

### Build & Run

1. Clone the repository
```bash
git clone https://github.com/MAMASHREEEE/xo-game-realtime.git
cd xo-game-realtime
```

2. Open in Android Studio
```bash
# Open with Android Studio
```

3. Build and run
```bash
# Build
./gradlew build

# Run on emulator or device
./gradlew installDebug
```

## How to Play 🎯

1. **Home Screen**: Enter your name and choose to create or join a game
2. **Create Game**: Start a new game and wait for an opponent to join
3. **Join Game**: Browse available rooms and join a game
4. **Play**: Take turns marking X and O on the 3x3 board
5. **Win**: Get three in a row (horizontally, vertically, or diagonally)

## Game Rules 📋

- Player 1 is always X, Player 2 is always O
- Players alternate turns
- First to get three symbols in a row wins
- If the board fills without a winner, it's a draw

## API Reference 📡

### FirebaseManager

- `createGameRoom(player1Id, player1Name)` - Create a new game
- `joinGameRoom(roomId, player2Id, player2Name)` - Join an existing game
- `makeMove(roomId, playerId, position, symbol)` - Make a move
- `updateGameStatus(roomId, winner, status)` - Update game status
- `observeGameRoom(roomId)` - Observe real-time updates
- `observeAvailableRooms()` - List available rooms

## Screenshots 📸

(Add screenshots here)

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License 📄

This project is licensed under the MIT License - see the LICENSE file for details.

## Author 👨‍💻

**MAMASHREEEE**
- GitHub: [@MAMASHREEEE](https://github.com/MAMASHREEEE)

## Support 💬

If you have any questions or suggestions, feel free to open an issue or contact me!

---

**Made with ❤️ for gaming enthusiasts**