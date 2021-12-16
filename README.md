# 👏 Giff Dialogs
[![Pub package](https://img.shields.io/pub/v/giff_dialog.svg?style=flat-square)](https://pub.dartlang.org/packages/giff_dialog)
[![support](https://img.shields.io/badge/platform-Flutter%7CAndroid%7CIOS%7CLinux%7CMacOS%7CWeb%7CWindows-ff69b4.svg?style=flat-square)](https://github.com/warith313/giff_dialog)

<p>A beautiful and custom alert dialog for flutter highly inspired from <a href="https://github.com/Shashank02051997/FancyGifDialog-Android">FancyAlertDialog-Android</a>.</p>

The source code is **100% Dart**, and everything resides in the [/lib](https://github.com/warith313/giff_dialog/tree/master/lib) folder.

# 💻 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  giff_dialog: <latest version>
```


# ❔ Usage

### Import this class

```dart
import 'package:giff_dialog/giff_dialog.dart';
```

### Network giff dialog

```dart
onPressed: () {
  showDialog(
  context: context,builder: (_) => NetworkGiffDialog(
    imageUrl:"https://raw.githubusercontent.com/Shashank02051997/
              FancyGifDialog-Android/master/GIF's/gif14.gif",
    title: Text('Granny Eating Chocolate',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600)),
    description:Text('This is a granny eating chocolate dialog box.
          This library helps you easily create fancy giff dialog',
          textAlign: TextAlign.center,
        ),
    entryAnimation: EntryAnimation.topLeft,
    onOkButtonPressed: () {},
  ) );
}
```

### Flare giff dialog

```dart
onPressed: () {
  showDialog(
  context: context,builder: (_) => FlareGiffDialog(
    flarePath: 'assets/example.flr',
    flareAnimation: 'loading',
    title: Text('Space Reloading',
           style: TextStyle(
           fontSize: 22.0, fontWeight: FontWeight.w600),
    ),
    description: Text('This is a space reloading dialog box.
          This library helps you easily create fancy flare dialog.',
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
    entryAnimation: EntryAnimation.normal,
    onOkButtonPressed: () {},
  ) );
}
```

### Asset giff dialog

```dart
onPressed: () {
  showDialog(
  context: context,builder: (_) => AssetGiffDialog(
    imagePath: 'assets/example.gif',
    title: Text('Men Wearing Jackets',
            style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w600),
    ),
    description: Text('This is a men wearing jackets dialog box.
          This library helps you easily create fancy giff dialog.',
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
    entryAnimation: EntryAnimation.bottomRight,
    onOkButtonPressed: () {},
  ) );
}
```

# 📃 License

    Copyright (c) 2021 Muntadher Al-Baghdadi
    
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
