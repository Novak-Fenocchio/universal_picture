# UniversalPicture

## Description

`UniversalPicture` is a versatile Flutter library for rendering images regardless of their format or source. This widget simplifies the process of loading and displaying images in Flutter applications, supporting a variety of sources such as local files, network URLs, in-memory data, and SVGs.

## Features

- **Ease of Use**: Use a single widget to handle multiple types of image sources.
- **Versatile Support**: Compatible with local, network, in-memory images, and SVGs.
- **Customizable**: Supports parameters like `width`, `height`, `fit`, and `color` for further customization.

## Installation

To use `UniversalPicture` in your Flutter project, follow these steps:

1. Add the dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     universal_picture: ^0.0.1
   ```

2. Install the library by running:

   ```bash
   flutter pub get
   ```

## Usage

Here's a basic example of how to use `UniversalPicture`:

```dart
import 'package:universal_picture/universal_picture.dart';

UniversalPicture(
source: 'path/to/your/image.png', // Can be a File, Uint8List, URL, or an asset
width: 100,
height: 100,
fit: BoxFit.cover,
color: Colors.blue,
)

```

## Contributions

Contributions to `UniversalPicture` are welcome. If you have ideas for improvement or have found a bug, feel free to open an issue or a pull request.

## License

This project is licensed under the MIT License

### Additional Notes

- **Customization**: Feel free to add or modify sections according to the needs of your project. For instance, if you have a 'Frequently Asked Questions' or 'Roadmap' section, include them.
- **Contributions**: If you have specific guidelines for contributions, be sure to detail them in the respective section.
- **Images and Detailed Examples**: Adding screenshots or more detailed code examples can be helpful for users of your library.

This README provides a basic and effective starting point. Remember to keep it updated as your project evolves.
