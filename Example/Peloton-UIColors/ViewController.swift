//
//  ViewController.swift
//  Peloton-UIColors
//
//  Created by Ryan Fitzgerald on 07/20/2016.
//  Copyright (c) 2016 Ryan Fitzgerald. All rights reserved.
//

import UIKit
import Peloton_UIColors

final class ViewController: UIViewController {
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

final class RadialView: UIView {
  override func draw(_ rect: CGRect) {
    guard let context = UIGraphicsGetCurrentContext() else { return }

    UIColor.drawSpotlightGradient(context, frame: rect)
  }
}
