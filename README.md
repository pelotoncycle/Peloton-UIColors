# Peloton-UIColors

[![CircleCI](https://circleci.com/gh/pelotoncycle/Peloton-UIColors.svg?style=svg)](https://circleci.com/gh/pelotoncycle/Peloton-UIColors)
[![codecov](https://codecov.io/gh/pelotoncycle/Peloton-UIColors/branch/master/graph/badge.svg)](https://codecov.io/gh/pelotoncycle/Peloton-UIColors)
[![Version](https://img.shields.io/cocoapods/v/Peloton-UIColors.svg?style=flat)](http://cocoapods.org/pods/Peloton-UIColors)
[![License](https://img.shields.io/cocoapods/l/Peloton-UIColors.svg?style=flat)](http://cocoapods.org/pods/Peloton-UIColors)
[![Platform](https://img.shields.io/cocoapods/p/Peloton-UIColors.svg?style=flat)](http://cocoapods.org/pods/Peloton-UIColors)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Peloton-UIColors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Peloton-UIColors"
```

### Usage
To use Peloton-UIColors, include the following import:

``` swift
import Peloton_UIColors
```

## Colors

#### Super Red

```swift
UIColor.pelotonSuperRed
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonSuperRed_looks_right%402x.png" height=100 width=100 />

#### Medium Orange

```swift
UIColor.pelotonMediumOrange
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonMediumOrange_looks_right%402x.png" height=100 width=100 />

#### Blue Black

```swift
UIColor.pelotonBlueBlack
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonBlueBlack_looks_right%402x.png" height=100 width=100 />

#### Slate Grey

``` swift
UIColor.pelotonSlateGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonSlateGrey_looks_right%402x.png" height=100 width=100 />

#### Dark Slate Grey

``` swift
UIColor.pelotonDarkSlateGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonDarkSlateGrey_looks_right%402x.png" height=100 width=100 />

#### Medium Grey
``` swift
UIColor.pelotonMediumGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonMediumGrey_looks_right%402x.png" height=100 width=100 />

#### Medium Dark Grey
``` swift
UIColor.pelotonMediumDarkGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonMediumDarkGrey_looks_right%402x.png" height=100 width=100 />

#### Light Grey
``` swift
UIColor.pelotonLightGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonLightGrey_looks_right%402x.png" height=100 width=100 />

#### Light Blue Grey
``` swift
UIColor.pelotonLightBlueGrey
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonLightBlueGrey_looks_right%402x.png" height=100 width=100 />

#### Blue White
``` swift
UIColor.pelotonBlueWhite
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonBlueWhite_looks_right%402x.png" height=100 width=100 />

#### Heart Rate Zone 1
``` swift
UIColor.pelotonHeartRateZone1
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonHeartRateZone1_looks_right%402x.png" height=100 width=100 />

#### Heart Rate Zone 2
``` swift
UIColor.pelotonHeartRateZone2
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonHeartRateZone2_looks_right%402x.png" height=100 width=100 />

#### Heart Rate Zone 3
``` swift
UIColor.pelotonHeartRateZone3
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonHeartRateZone3_looks_right%402x.png" height=100 width=100 />

#### Heart Rate Zone 4
``` swift
UIColor.pelotonHeartRateZone4
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonHeartRateZone4_looks_right%402x.png" height=100 width=100 />

#### Heart Rate Zone 5
``` swift
UIColor.pelotonHeartRateZone5
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/pelotonHeartRateZone5_looks_right%402x.png" height=100 width=100 />

## Gradient Colors

#### Spotlight Gradient

```swift
if let context = UIGraphicsGetCurrentContext() {
  UIColor.drawSpotlightGradient(context, frame: rect)
}
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/spotlightGradient_looks_right%402x.png" height=667 width=375 />

#### Light Grey Gradient

```swift
if let context = UIGraphicsGetCurrentContext() {
  UIColor.drawLightGreyGradient(context, frame: rect)
}
```
<img src="https://raw.githubusercontent.com/pelotoncycle/Peloton-UIColors/master/Example/Tests/ReferenceImages/UIColorPelotonTests/lightGreyGradient_looks_right%402x.png" height=667 width=375 />

## Author

Ryan Fitzgerald, ryan.fitzgerald@pelotoncycle.com

## License

Peloton-UIColors is available under the MIT license. See the LICENSE file for more info.
