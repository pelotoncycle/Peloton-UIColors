//
//  UIColor+Peloton.swift
//  Pods
//
//  Created by Ryan Fitzgerald on 7/20/16.
//
//

import UIKit.UIColor

extension UIColor {

  fileprivate class func colorFromHex(_ hex6: UInt32, alpha: CGFloat = 1) -> UIColor {
    let divisor = CGFloat(255)
    let red     = CGFloat((hex6 & 0xFF0000) >> 16) / divisor
    let green   = CGFloat((hex6 & 0x00FF00) >>  8) / divisor
    let blue    = CGFloat( hex6 & 0x0000FF       ) / divisor
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }

  public class func pelotonSuperRed() -> UIColor {
    return UIColor.colorFromHex(0xFF3347)
  }

  public class func pelotonBlueBlack() -> UIColor {
    return UIColor.colorFromHex(0x222529)
  }

  public class func pelotonSlateGrey() -> UIColor {
    return UIColor.colorFromHex(0x697180)
  }

  public class func pelotonMediumGrey() -> UIColor {
    return UIColor.colorFromHex(0xA8ACB1)
  }

  public class func pelotonLightGrey() -> UIColor {
    return UIColor.colorFromHex(0xD2D5D9)
  }

  public class func pelotonLightBlueGrey() -> UIColor {
    return UIColor.colorFromHex(0xEEF0F2)
  }

  public class func pelotonBlueWhite() -> UIColor {
    return UIColor.colorFromHex(0xF5F7F9)
  }

  public class func drawSpotlightGradient(_ context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonMediumGrey()
    let gradColor = UIColor.pelotonBlueWhite()
    let colors = [gradColor.withAlphaComponent(1.0), gradColor.withAlphaComponent(0.7)]

    UIColor.drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  public class func drawLightGreyGradient(_ context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonLightGrey()
    let gradColor = UIColor.white
    let colors = [gradColor.withAlphaComponent(1.0), gradColor.withAlphaComponent(0.65)]

    UIColor.drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  fileprivate class func drawRadialGradient(_ context: CGContext, frame: CGRect, colors: [UIColor], backgroundColor: UIColor) {
    // fill background
    context.setFillColor(backgroundColor.cgColor)
    context.fill(frame)

    // oval gradient
    let gradientColors: CFArray = colors.map { $0.cgColor } as CFArray

    let locations: [CGFloat] = [0.0, 1]

    guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColors, locations: locations) else {
      return
    }

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
