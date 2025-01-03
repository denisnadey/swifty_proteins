# Swifty Proteins - Setup and Usage Guide

## Overview

Swifty Proteins is a cross-platform mobile application developed using Flutter, designed for the 3D visualization of ligands from the Protein Data Bank (PDB). This application allows users to:

- Search for ligands.
- Interact with 3D models of ligands (zoom, rotate, etc.).
- Display atomic structures with tooltips showing atom information.
- Share ligand models via social media.

This guide provides instructions for setting up the development environment, building, and deploying the project for both Android and iOS platforms.

---

## Prerequisites

### General Requirements

- **Flutter SDK**: Version 3.27.1.
- **FVM (Flutter Version Manager)**: To manage the Flutter version used in the project.
- **Git**: To clone the project repository.

### Platform-Specific Tools

#### For macOS (Required for iOS Development):

- **Xcode**: Version 14 or above.
- **CocoaPods**: Installed via Homebrew (`brew install cocoapods`).
- **Apple Developer Account**: Required to authorize Xcode for building iOS apps (a free account is sufficient).

#### For Windows/Linux:

- **Android Studio**: With the latest SDK tools.
- **Java Development Kit (JDK)**: Version 11 or above.

---

## Setup Instructions

### Step 1: Clone the Repository

Clone the project repository from GitHub:

```bash
git clone <repository-url>
cd swifty_proteins
```

### Step 2: Install FVM and Select Flutter Version

Install FVM:

```bash
dart pub global activate fvm
```

Select the required Flutter version for the project:

```bash
fvm install 3.27.1
fvm use 3.27.1
```

### Step 3: Install Project Dependencies

Run the following commands to install dependencies:

```bash
fvm flutter pub get
```

### Step 4: Platform-Specific Configuration

#### iOS:

1. Navigate to the `ios` directory:
   ```bash
   cd ios
   ```
2. Install CocoaPods dependencies:
   ```bash
   pod install
   ```
3. Open the `.xcworkspace` file in Xcode:
   ```bash
   open Runner.xcworkspace
   ```
4. Set up the signing and capabilities in Xcode using your Apple Developer Account (a free account is sufficient).

#### Android:

1. Open the project in Android Studio.
2. Navigate to `File > Settings > System Settings > Android SDK` and ensure all required SDK tools are installed.
3. Set up your keystore for release builds (refer to the official Flutter documentation for details).

---

## Running the Project

### Debug Mode

#### iOS:

Run the project using Xcode:

```bash
fvm flutter run --target-platform=ios
```

#### Android:

Run the project using Android Studio or the CLI:

```bash
fvm flutter run
```

### Release Mode (For Real Devices Only)

#### iOS:

1. Build the iOS release:
   ```bash
   fvm flutter build ios --release
   ```
2. Install the app on your device:
   ```bash
   fvm flutter install
   ```
3. Choose the connected device for installation.

#### Android:

1. Build the APK or AAB file:
   ```bash
   fvm flutter build apk --release
   fvm flutter build appbundle --release
   ```
2. Install the APK on your device:
   ```bash
   fvm flutter install
   ```
3. Choose the connected device for installation.

---

## Using VS Code for Development

All development work for this project is optimized for Visual Studio Code (VS Code). Here’s how you can set up and use VS Code for this project:

1. **Install Flutter and Dart Plugins**:

   - Open the Extensions view (`Ctrl+Shift+X` or `Cmd+Shift+X` on macOS).
   - Search for and install the Flutter and Dart plugins.

2. **Launch Configurations**:

   - Use the pre-configured `.vscode/launch.json` file (if available) to choose between `debug`, `release`, or `profile` modes.
   - To manually configure:
     1. Open the Run and Debug view (`Ctrl+Shift+D` or `Cmd+Shift+D` on macOS).
     2. Click on the gear icon to edit launch configurations.
     3. Add the desired mode under the `configurations` array (e.g., `flutter run --release`).

3. **Running the App**:

   - Select the target mode (debug, release, or profile) in the Run and Debug view.
   - Click the green play button to launch the app on the connected device or emulator.

4. **Device Selection**:
   - Use the status bar at the bottom of VS Code to choose the connected device or emulator.

---

## Notes

- **Stability**: The app is optimized for use on real devices in release mode.
- **Testing**: While debugging on emulators is possible, features like fingerprint authentication may require a physical device.
- **Support**: For additional help, refer to the Flutter documentation or contact the development team.

---

## Project Structure

- `lib/`: Contains the main application code.
- `assets/`: Stores static files such as images and preloaded ligand data.
- `pubspec.yaml`: Defines project dependencies.
- `ios/` and `android/`: Platform-specific configuration files.

---

## Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Protein Data Bank (PDB)](https://www.rcsb.org/)
- [Dart Packages](https://pub.dev)

Thank you for using Swifty Proteins!
