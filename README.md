[![pub package](https://img.shields.io/pub/v/cfc.svg)](https://pub.dev/packages/cfc)

# 🧼 Clean Folder Creator

> ✨ Save time. Stay consistent. Scale your codebase the clean way.

**CFC** is a Dart CLI tool that automates the creation of **feature-driven folders** following the **Clean Architecture** pattern in Flutter projects.  

## 🚀 Getting Started

### 1. Install Globaly

```bash
dart pub global activate --source path .
```

### 2. Usage

In project directory just run:

```bash
cfc <feature_name>
```

## 📦 What It Does

CFC generates a full boilerplate structure inside your Flutter `lib/` directory for a given feature name, including:  

```plaintext
lib/
└── features/
    └── your_feature/
    ├── data/
    │ ├── datasources/
    │ ├── remote/
    │ │ │ └── your_feature_remote_datasource.dart
    │ │ └── local/
    │ │ └── your_feature_local_datasource.dart
    │ ├── models/
    │ │ └── your_feature_dto.dart
    │ └── repo/
    │ └── your_feature_impl.dart
    ├── domain/
    │ ├── entity/
    │ │ └── your_feature.dart
    │ ├── repo/
    │ │ └── your_feature_repo.dart
    │ └── usecases/ ← ready for use case classes
    └── presentation/
         pages/
        └── your_feature_page.dart
```

Each file is pre-filled with basic template code (classes, stubs, and comments) to jump-start your feature development.
  
- ✅ Class names based on the feature name

- 🔧 Clean Architecture folder layout

- ✨ Auto-generated boilerplate for
    1) Data sources (remote/local)
    2) DTOs
    3) Repositories
    4) Domain entities
    5) UI Pages

### 📄 License

MIT License © 2025 arg0nath — Built with ❤️ for clean, scalable Flutter codebases.

🙌 Credits

Inspired by Clean Architecture and the Flutter community.
