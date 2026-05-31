# UI Login Pages

A small Flutter project that demonstrates three different login‑page designs.

## Features

* **Animated welcome page** – uses `animate_do`'s `FadeInUp` for a smooth entrance.
* **Login page** – shows how to wrap essential widgets with `FadeInUp` without external packages.
* **Sign‑up page** – each child widget is animated individually.
* **Reusable components** – `MyTextField` and `MyButton` are now functional widgets with an `obscureText` flag for password fields.

## Getting Started

1. **Install Flutter** – follow the official guide at https://flutter.dev.
2. **Clone the repository** and navigate to the project root.
3. Run `flutter pub get` to fetch dependencies (the project uses `animate_do`).
4. Launch the app with `flutter run` on your preferred device or emulator.

## Project Structure

```
lib/
│   main.dart                 # Entry point
│
├─ components/
│   ├─ button.dart            # Functional MyButton widget
│   └─ text_field.dart        # Functional MyTextField widget
│
└─ login_page3/
    ├─ app_color3.dart        # Color definitions
    ├─ app_theme3.dart        # Theme data
    ├─ login_page3_welcome.dart  # Welcome screen with animations
    ├─ login_page3_login.dart    # Login screen with FadeInUp on essential widgets
    └─ login_page3_signup.dart   # Sign‑up screen with child‑level animations
```

## Customisation

* To change animation timings, edit the `duration` values in the `FadeInUp` widgets.
* The `MyButton` widget accepts an optional `color` parameter to customise its background.
* The `MyTextField` widget now supports `obscureText` for password inputs.

## how change page or screen 
- go to `main.dart` and change the `home` parameter in `runApp` to the page you want to show.
