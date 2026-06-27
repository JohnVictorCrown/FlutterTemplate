# Flutter Template 🚀

A Flutter project template with CI/CD pre-configured. Use this as a starting point for your Flutter projects.

[![Build & Release](https://github.com/YOUR_USERNAME/YOUR_REPO/actions/workflows/CI.yml/badge.svg)](https://github.com/YOUR_USERNAME/YOUR_REPO/actions/workflows/CI.yml)

## ✨ Features

- Clean Flutter project structure
- Material 3 design
- GitHub Actions CI/CD for Android & iOS builds
- Automatic release creation on push to `main`/`master`

## 🚀 Getting Started

1. **Use this template** — Click the "Use this template" button on GitHub, or clone and rename
2. **Update the project name** — Search for `flutter_template` and replace with your app name
3. **Set your application ID** — Update `android/app/build.gradle.kts` with your unique application ID
4. **Add your dependencies** — Edit `pubspec.yaml` to add the packages your project needs
5. **Start coding!** — Replace `lib/main.dart` with your app's entry point

## 🛠 Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) ^3.0.0
- Android SDK (API 21+) for Android builds
- Xcode (macOS) for iOS builds

## 🤖 CI/CD

The included GitHub Actions workflow (`.github/workflows/CI.yml`) automatically:
- Builds Android APKs (Universal + Split per ABI)
- Builds iOS archive (.zip)
- Creates a GitHub Release with the artifacts

Triggered on every push to `main` or `master`.

---
*Generated from [Flutter Template](https://github.com/YOUR_USERNAME/YOUR_REPO)*
