# NiceKeyboard

A Swift library for managing keyboard interactions in iOS applications

## Features
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
        // Add custom behavior here, such as adjusting UI or animations
    },
    keyboardWillHide: {
        print("Keyboard will hide")
        // Add custom behavior here, such as restoring UI state or hiding elements
    },
    dismissOnTap: true // Enables dismissing the keyboard by tapping outside
)
```
With NiceKeyboard, you have complete flexibility to customize the behavior of your app whenever the keyboard appears or disappears.    
This makes it easy to create a seamless and polished user experience, whether you’re handling forms, chat interfaces, or any input-driven screen.
