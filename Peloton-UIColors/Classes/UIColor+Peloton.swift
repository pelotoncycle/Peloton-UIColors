//
//  UIColor+Peloton.swift
//  Pods
//
//  Created by Ryan Fitzgerald on 7/20/16.
//
//

import UIKit.UIColor

extension UIColor {

  private class func colorFromHex(hex6: UInt32, alpha: CGFloat = 1) -> UIColor {
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

  public class func pelotonBlueWhite() -> UIColor {
    return UIColor.colorFromHex(0xF5F7F9)
  }

  public class func drawSpotlightGradient(context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonMediumGrey()
    let gradColor = UIColor.pelotonBlueWhite()
    let colors = [gradColor.colorWithAlphaComponent(1.0), gradColor.colorWithAlphaComponent(0.7)]

    UIColor.drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  public class func drawLightGreyGradient(context: CGContext, frame: CGRect) {
    let backgroundColor = UIColor.pelotonLightGrey()
    let gradColor = UIColor.whiteColor()
    let colors = [gradColor.colorWithAlphaComponent(1.0), gradColor.colorWithAlphaComponent(0.65)]

    UIColor.drawRadialGradient(context, frame: frame, colors: colors, backgroundColor: backgroundColor)
  }

  private class func drawRadialGradient(context: CGContext, frame: CGRect, colors: [UIColor], backgroundColor: UIColor) {
    // fill background
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor)
    CGContextFillRect(context, frame)

    // oval gradient
    let gradientColors: CFArrayRef = colors.map { $0.CGColor }

    let locations: [CGFloat] = [0.0, 1]

    let gradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), gradientColors, locations)

    let scaleT: CGAffineTransform

    if frame.size.height > frame.size.width {
      scaleT = CGAffineTransformMakeScale(0.5, 1.0)
    } else {
      scaleT = CGAffineTransformMakeScale(1, 0.7)
    }

    let invScaleT = CGAffineTransformInvert(scaleT)
    let invS = CGPoint(x: invScaleT.a, y: invScaleT.d)

    let radius: CGFloat
    if frame.size.height > frame.size.width {
      radius = frame.size.height / 2 * invS.y
    } else {
      radius = frame.size.width / 2 * invS.x
    }

    let center = CGPoint(x: frame.midX * invS.x, y: frame.midY * invS.y)

    CGContextScaleCTM(context, scaleT.a, scaleT.d)

    CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, .DrawsAfterEndLocation)
  }
}
