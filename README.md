# 🌦️ Weather Track

A simple and beginner-friendly Flutter weather application that displays real-time weather information for any city using the WeatherAPI.

---

## 📱 Project Name

**Weather Track**

---

## 🎯 Project Objective

The main objective of this project is to provide users with current weather information in an attractive and responsive interface. Users can search for any city and instantly view its weather details.

---

## ✨ Features

- Search weather by city name
- Real-time weather information
- Displays:
  - City Name
  - Region
  - Country
  - Temperature
  - Weather Condition
  - Feels Like Temperature
  - Humidity
  - Wind Speed
  - Visibility
  - Pressure
  - UV Index
  - Cloud Percentage
  - Last Updated Time
- Responsive UI
- Beautiful Gradient Background
- Pull-to-Refresh
- Error Handling
- Loading Indicator

---

## 📂 Folder Structure

```text
lib/
│
├── models/
│   └── weather_model.dart
│
├── services/
│   └── weather_service.dart
│
├── utils/
│   ├── app_colors.dart
│   └── app_constants.dart
│
├── widgets/
│   ├── app_header.dart
│   ├── search_section.dart
│   ├── weather_card.dart
│   ├── weather_details.dart
│   └── climate_categories.dart
│
├── screens/
│   └── home_screen.dart
│
└── main.dart
```

---

## 🛠 Technologies Used

- Flutter
- Dart
- Material Design
- HTTP Package
- WeatherAPI

---

## 📦 Packages Used

```yaml
dependencies:
  flutter:
    sdk: flutter

  http: ^1.2.1
```

---

## 🌐 API Used

**WeatherAPI**

Website:

https://www.weatherapi.com/

---

## ▶️ How to Run

### 1. Clone the project

```bash
git clone <repository-url>
```

### 2. Open the project

```bash
cd weather_track
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Add your WeatherAPI key

Open:

```text
lib/services/weather_service.dart
```

Replace

```dart
YOUR_API_KEY
```

with your own WeatherAPI key.

---

### 5. Run the project

```bash
flutter run
```

---

## 📸 Screenshots

Add screenshots of:

- Home Screen
- Weather Details
- Search Result

---

## 🎓 Learning Outcomes

- Flutter Widgets
- StatefulWidget
- API Integration
- HTTP Requests
- JSON Parsing
- Model Classes
- Responsive UI
- Error Handling
- Clean Code Structure

---

## 👩‍💻 Developed By

**Shreemathi Elumalai**

VIT Vellore

---

## 📄 License

This project is developed for educational purposes.