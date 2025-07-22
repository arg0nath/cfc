# 🧼 CFC - Clean Folder Creator

**CFC** is a Dart CLI tool that automates the creation of **feature-driven folders** following the **Clean Architecture** pattern in Flutter projects.  

> ✨ Save time. Stay consistent. Scale your codebase the clean way.
---

## 📦 What It Does

CFC generates a full boilerplate structure inside your Flutter `lib/` directory for a given feature name, including:  

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
  
Each file is pre-filled with basic template code (classes, stubs, and comments) to jump-start your feature development.
  
---

## 🚀 Getting Started

### 1. Install Locally

```bash
dart pub global activate --source path .
```

This lets you run cfc from anywhere in your terminal.

### 2. Usage

```bash
cfc <feature_name>
```

## 📌 Example

```bash
cfc type_selection
```

This will create the full structure inside:

lib/features/type_selection/

## ✅ Class names are auto-formatted (PascalCase / camelCase) based on the feature name

## 🔧 Clean Architecture folder layout

## ✨ Auto-generated boilerplate for

1) Data sources (remote/local)
2) DTOs
3) Repositories
4) Domain entities
5) UI Pages

## 🧠 Smart name formatting (snake_case, PascalCase, camelCase)

## 🛠 Easy to extend with your own templates and naming rules

## 🗺 Roadmap
  
### 🤝 Contributing

1) Contributions and feature requests are welcome!
2) Fork the repo
3) Add your changes
4) Open a PR
  
### 📄 License

MIT License © 2025 — Built with ❤️ for clean, scalable Flutter codebases.

🙌 Credits

Inspired by Clean Architecture and the Flutter community.
