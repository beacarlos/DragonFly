# DragonFly
DragonFly is a framework that makes it easy to manipulate colors and fonts in your project. Some functions are:
  
  **Colors**
  * `color()`: Converts colors in hexadecimal or RGB formats to UIColor
  * `randomColor()`: Creates a random UIColor
  * `darker()`: Makes the desired color darker
  * `darkerHigh()`: Makes the desired color even darker
  * `light()`: Makes the desired color lighter
  * `lightHigh()`: Makes the desired color even lighter
   
  **Fonts**
  * `large()`: Returns the font object for standard interface items with size 34.
  * `title1()`: Returns the font object for standard interface items with size 28.
  * `title2()`: Returns the font object for standard interface items with size 22.
  * `title3()`: Returns the font object for standard interface items with size 20.
  * `headline()`: Returns the font object for standard interface items with size 17.
  * `body()`: Returns the font object for standard interface items with size 17.
  * `callout()`: Returns the font object for standard interface items with size 16.
  * `subhead()`: Returns the font object for standard interface items with size 15.
  * `footnote()`: Returns the font object for standard interface items with size 13.
  * `caption1()`: Returns the font object for standard interface items with size 12.
  * `caption2()`: Returns the font object for standard interface items with size 11.

## Requirements
* iOS 2.0+
* Xcode 10+
* Swift 4.0+

## Installation
### CocoaPods
CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit the website below:
* [Cocoapods website](https://cocoapods.org)

To integrate DragonFly into your Xcode project using CocoaPods, specify it in your Podfile:

`pod 'DragonFly', :git => 'https://github.com/beacarlos/DragonFly'`

## Examples
### Color
#### Instantiating with hexa code
```swift
let hexColor = Color(hex: "#FF5B5B")
```

#### Instantiating with RGB code
```swift
let rgbColor = Color(red: 255, green: 91, blue: 91)!
```

#### Creating a UIColor object
```swift
hexColor.color()
rgbColor.color()
```

#### Creating a radom color 
```swift
Color.randomColor()
```

#### Set lighter color
```swift
hexColor.lighter(.lighter)
rgbColor.lighter(.lighterHigh)
```
The value of `intensity` property can be .lighter or .lighterHigh

#### Set darker color
```swift
hexColor.darker(.darker)
rgbColor.darker(.darkerHigh)
```
The value of `intensity` property can be .darker or .darkerHigh

#### Set gradient
```swift
// Create a gradient layer
let gradientLayer = Color.gradient(UIColor.orange, secondColor: UIColor.yellow)
// Set gradient frame
gradientLayer?.frame = button.bounds

// Add gradient to button
button.layer.insertSublayer(gradientLayer!, at: 0)
```


### Font
#### Instantiating with UIFont
```swift
let font = UIFont(name: "DancingScript-Regular", size: 2)
lazy var fontCustom = Font(font: font)
```

#### Instantiating with systemFont
```swift
let fontSystem = Font(font: .systemFont(ofSize: 0))
```

#### Set the size according HIG
```swift
fontCustom.large()
fontSystem.title1()
fontSystem.title2()
fontSystem.title3()
fontSystem.headline()
fontSystem.body()
fontSystem.callout()
fontSystem.subhead()
fontSystem.footnote()
fontSystem.caption1()
fontSystem.caption2()
```

## How to use
See the applications in the demo project: [DragonFlyDemo](https://github.com/brenaamorim/DragonFlyExamples)

## Screenshots
![image](https://user-images.githubusercontent.com/59696644/127590562-12039599-b6e1-4d7b-b3ff-fe5d7b5132a4.png)
