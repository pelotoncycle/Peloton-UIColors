//
//  UIColor+Peloton.swift
//  Pods
//
//  Created by Ryan Fitzgerald on 7/20/16.
//
//

import UIKit.UIColor

extension UIColor {
  private static func colorFromHex(_ hex6: UInt32, alpha: CGFloat = 1) -> UIColor {
    let divisor = CGFloat(255)
    let red     = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
    let green   = CGFloat((hex6 & 0x00FF00) >>  8) / divisor
    let blue    = CGFloat( hex6 & 0x0000FF       ) / divisor

    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }

  public static var pelotonSuperRed: UIColor {
    return .colorFromHex(0xFF3347)
  }

  public static var pelotonMediumOrange: UIColor {
    return .colorFromHex(0xFABD5C)
  }

  public static var pelotonBlueBlack: UIColor {
    return .colorFromHex(0x222529)
  }

  public static var pelotonSlateGrey: UIColor {
    return .colorFromHex(0x697180)
  }

  public static var pelotonMediumGrey: UIColor {
    return .colorFromHex(0xA8ACB1)
  }

  public static var pelotonMediumDarkGrey: UIColor {
    return .colorFromHex(0x8A8D91)
  }

  public static var pelotonLightGrey: UIColor {
    return .colorFromHex(0xD2D5D9)
  }

  public static var pelotonLightBlueGrey: UIColor {
    return .colorFromHex(0xEEF0F2)
  }

  public static var pelotonBlueWhite: UIColor {
    return .colorFromHex(0xF5F7F9)
  }

  public static var pelotonHeartRateZone1: UIColor {
    return .colorFromHex(0x50C4AA)
  }

  public static var pelotonHeartRateZone2: UIColor {
    return .colorFromHex(0xB6C95C)
  }

  public static var pelotonHeartRateZone3: UIColor {
    return .colorFromHex(0xFACB3E)
  }

  public static var pelotonHeartRateZone4: UIColor {
    return .colorFromHex(0xFC800F)
  }

  public static var pelotonHeartRateZone5: UIColor {
    return .colorFromHex(0xFF4759)
  }

  public static func drawSpotlightGradient(_ context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonMediumGrey
    let gradColor = UIColor.pelotonBlueWhite
    let colors = [gradColor.withAlphaComponent(1.0), gradColor.withAlphaComponent(0.7)]

    drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  public static func drawLightGreyGradient(_ context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonLightGrey
    let gradColor = UIColor.white
    let colors = [gradColor.withAlphaComponent(1.0), gradColor.withAlphaComponent(0.65)]

    drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  private static func drawRadialGradient(_ context: CGContext, frame: CGRect, colors: [UIColor], backgroundColor: UIColor) {
    // Fill background
    context.setFillColor(backgroundColor.cgColor)
    context.fill(frame)

    // Oval gradient
    let gradientColors = colors.map { $0.cgColor } as CFArray

    let locations: [CGFloat] = [0.0, 1]

    guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColors, locations: locations) else { return }

    let scaleT: CGAffineTransform

    if frame.size.height > frame.size.width {
      scaleT = CGAffineTransform(scaleX: 0.5, y: 1.0)
    } else {
      scaleT = CGAffineTransform(scaleX: 1, y: 0.7)
    }

    let invScaleT = scaleT.inverted()
    let invS = CGPoint(x: invScaleT.a, y: invScaleT.d)

    let radius: CGFloat
    if frame.size.height > frame.size.width {
      radius = frame.size.height / 2 * invS.y
    } else {
      radius = frame.size.width / 2 * invS.x
    }

    let center = CGPoint(x: frame.midX * invS.x, y: frame.midY * invS.y)

    context.scaleBy(x: scaleT.a, y: scaleT.d)

    context.drawRadialGradient(gradient, startCenter: center, startRadius: 0, endCenter: center, endRadius: radius, options: .drawsAfterEndLocation)
  }
}
