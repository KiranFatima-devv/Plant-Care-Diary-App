# 🌱 Plant Care Diary

A cross-platform Flutter application to help plant lovers track watering schedules, growth logs, and care reminders.

---

## 📋 Features

- **Add Plants:** Save plant name, type, and photo
- **Watering Schedule:** Set and get reminders
- **Growth Diary:** Log height, leaves, health status
- **Notifications:** Daily watering reminders
- **Dark Mode Support**
- **Cross-Platform:** Android, iOS, Web, Desktop

---

## 🛠️ Tech Stack

| Layer | Technology |
| :--- | :--- |
| **Framework** | Flutter |
| **Language** | Dart |
| **State Management** | Provider / Riverpod |
| **Database** | SQLite / Hive |
| **Local Storage** | Shared Preferences |
| **Notifications** | flutter_local_notifications |
| **Image Picker** | image_picker |

---

## 📸 Screenshots

| Home Screen | Add Plant | Reminder |
| :---: | :---: | :---: |
| *(![Home Screen](screenshots/HomePageAfterAddingPlants))* | *(![Add Plant](screenshots/PlantAdding))* | *(![Detail View](screenshots/WaterGivenToPlant)* |

---

## 🚀 How to Run

### Prerequisites
- Flutter SDK installed
- Android Studio / VS Code
- Emulator or physical device

### Step 1: Clone the Repository
```bash
git clone https://github.com/KiranFatima-dev/plant-care-diary.git
cd plant-care-diary
```

### Step 2: Get Dependencies
```bash
flutter pub get
```

### Step 3: Run the App
```bash
flutter run
```

---

## 📁 Project Structure

```
plant-care-diary/
├── lib/
│   ├── models/          (Plant data models)
│   ├── services/        (Database, Notification services)
│   └── widgets/         (Reusable UI components)
├── android/             (Android native code)
├── ios/                 (iOS native code)
├── web/                 (Web support)
├── windows/             (Windows support)
├── linux/               (Linux support)
├── macos/               (MacOS support)
├── test/                (Unit tests)
├── pubspec.yaml         (Dependencies)
└── README.md
```

---

## 👩‍💻 My Contribution

As a Computer Science undergraduate, I developed this app to solve real-world plant care problems:

- Built complete cross-platform UI in Flutter
- Integrated local database for plant storage
- Added notification reminders for watering
- Designed reusable widgets for clean code

---

## 🔮 Future Improvements

- Add cloud sync with Firebase
- Plant disease detection using AI/ML
- Social sharing of plant progress
- Multi-language support
