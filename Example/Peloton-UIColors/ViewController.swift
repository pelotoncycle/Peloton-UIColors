//
//  ViewController.swift
//  Peloton-UIColors
//
//  Created by Ryan Fitzgerald on 07/20/2016.
//  Copyright (c) 2016 Ryan Fitzgerald. All rights reserved.
//

import UIKit
import Peloton_UIColors

class ViewController: UIViewController {
  let radialView = RadialView()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(radialView)
  }

  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    radialView.frame = view.bounds
  }
}

class RadialView: UIView {

  override func draw(_ rect: CGRect) {
    if let context = UIGraphicsGetCurrentContext() {
      UIColor.drawSpotlightGradient(context, frame: rect)
    }
  }
}
