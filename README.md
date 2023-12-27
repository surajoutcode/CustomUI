
# CustomUI

CustomUI is a collection af all the custom componenets related to the UI which can be easily integrated and can maintain a code quality

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. To install EasyNetworking, simply add the following line to your `Podfile`:

```ruby
pod 'CustomUI', :git => 'https://github.com/surajoutcode/CustomUI.git'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. EasyNetworking also support its use on supported platforms.

Once you have your Swift package set up, adding CustomUI as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/surajoutcode/CustomUI.git"))
]
```


## Some of the Usage Example


### Changing a Theme

```bash
ThemeType.setLightThemeColor(params)      
ThemeType.setDarkThemeColor(params)
````

### Button

```bash
private lazy var button: Button = {
    let view = Button()
    view.titleLabel?.font = UIFont.smallBold
    let image = UIImage(named: "image_name", in: Bundle(for: ViewController.self), compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
    view.setImage(image, for: .normal)
    view.setTitle("Button Title", for: .normal)
    view.setTitleColor(UIColor.white, for: .normal)
    view.alignImageAndTitleVertically() //in order to align image and title vertically
    return view
}()
````

### UILabel

```bash
private lazy var label: Label = {
    let view = Label()
    view.textAlignment = .left
    view.numberOfLines = 0
    view.font = UIFont.mediumSmallBold.italics()
    view.isUserInteractionEnabled = false
    return view
}()
````

### UITextfield

```bash
private lazy var textField: TextField = {
    let view = TextField()
    view.placeholder = "placeholder"
    view.text = "text"
    return view
}()
````
