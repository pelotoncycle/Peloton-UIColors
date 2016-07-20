//
//  UIColor+Peloton.swift
//  Pods
//
//  Created by Ryan Fitzgerald on 7/20/16.
//
//

import UIKit
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
}