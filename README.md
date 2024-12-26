# Swifty Protein

### Overview

Swifty Protein is a cross-platform mobile application built with Flutter, designed to enable users to explore and visualize 3D models of ligands from the Protein Data Bank (PDB). The app provides a simple, intuitive interface for ligand browsing, interactive visualization, and atomic structure analysis using the powerful **NGL Viewer** library.

---

### Features

- **User Authentication**:
  - Fingerprint-based login (TouchID/BiometricManager).
  - Fallback to password-based authentication.
- **Ligand Browser**:
  - Searchable list of ligands retrieved from the `ligands.txt` file.
  - Displays a loading animation during ligand data retrieval.
  - Error handling for cases where ligand data cannot be loaded.
- **3D Visualization**:
  - Interactive 3D ligand models using **NGL Viewer**.
  - Supports zooming, rotation, and viewing atomic details.
  - Uses CPK coloring and "ball-and-stick" representation for clarity.
- **Cross-Platform**:
  - Fully functional on both iOS and Android.
- **Social Sharing**:
  - Share ligand visualizations with others via integrated social sharing tools.

---

### Tech Stack

- **Framework**: Flutter (Dart)
- **3D Rendering**: NGL Viewer integrated via WebView.
- **Data Source**: Protein Data Bank (PDB).
- **Authentication**: Biometric APIs with password fallback.

---

### Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/denisnadey/swifty_proteins.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

---

### Screenshots

_(Add screenshots of your app, including the login screen, ligand list, and 3D visualizations)_

---

### Contribution

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch for your feature/bugfix.
3. Submit a pull request with a detailed explanation.

---

### License

This project is licensed under the [MIT License](LICENSE).
