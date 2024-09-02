# Screendapt

Screendapt provides responsive UI components like Texts, Icons, and Containers, all of which adapt automatically to predefined breakpoints, delivering a consistent experience across various screen sizes.

## Usage

- Add the package to your dependencies.

- Import the package in your project

```dart
import 'package:screendapt/screendapt.dart';
```

- Use your preferred Screendapt Widget

1. Text

```dart
    const SText(
       'A scalable screendapt text',
        maxFontSize: 30,
        style: TextStyle(fontSize: 18),
    ),
```

2. Icon

```dart
    const SIcon(
        Icons.abc,
        iconSize: 30,
        maxIconSize: 40,
    ),
```

2. Container/Box

```dart
    SContainer(
      maxWidth: 800,
      child: Container(
        color: Colors.red,
        height: 100,
      ),
    )

```
