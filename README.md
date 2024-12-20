# NiceKeyboard

A Swift library for managing keyboard interactions in iOS applications

## Features
- Made for me
- Use in special situations
- Automatically adjusts UI when the keyboard appears/disappears
- Dismiss the keyboard with a tap gesture
- Exclude specific views from tap gesture

## Usage

### Basic Configuration
```swift
import NiceKeyboard

NiceKeyboard.shared.configure(
    observingView: self.view,
    keyboardWillShow: { height in
        print("Keyboard will show with height: \(height)")
    },
    keyboardWillHide: {
        print("Keyboard will hide")
    },
    dismissOnTap: true
)
```

