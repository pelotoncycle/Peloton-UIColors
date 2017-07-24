// https://github.com/Quick/Quick

import UIKit
import Quick
import Nimble
import Nimble_Snapshots
import Peloton_UIColors

final class UIColorPelotonSpec: QuickSpec {
  override func spec() {
    var view: UIView!

    beforeEach {
      view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    }

    it("pelotonSuperRed looks right") {
      view.backgroundColor = .pelotonSuperRed
      expect(view) == snapshot()
    }

    it("pelotonMediumOrange looks right") {
      view.backgroundColor = .pelotonMediumOrange
      expect(view) == snapshot()
    }

    it("pelotonBlueBlack looks right") {
      view.backgroundColor = .pelotonBlueBlack
      expect(view) == snapshot()
    }

    it("pelotonSlateGrey looks right") {
      view.backgroundColor = .pelotonSlateGrey
      expect(view) == snapshot()
    }

    it("pelotonMediumGrey looks right") {
      view.backgroundColor = .pelotonMediumGrey
      expect(view) == snapshot()
    }

    it("pelotonLightGrey looks right") {
      view.backgroundColor = .pelotonLightGrey
      expect(view) == snapshot()
    }

    it("pelotonLightBlueGrey looks right") {
      view.backgroundColor = .pelotonLightBlueGrey
      expect(view) == snapshot()
    }

    it("pelotonBlueWhite looks right") {
      view.backgroundColor = .pelotonBlueWhite
      expect(view) == snapshot()
    }

    it("spotlightGradient looks right") {
      let radialView = SpotlightRadialView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
      expect(radialView) == snapshot()
    }

    it("spotlightGradient looks right in landscape") {
      let radialView = SpotlightRadialView(frame: CGRect(x: 0, y: 0, width: 667, height: 375))
      expect(radialView) == snapshot()
    }

    it("lightGreyGradient looks right") {
      let radialView = LightRadialView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
      expect(radialView) == snapshot()
    }

    it("lightGreyGradient looks right in landscape") {
      let radialView = LightRadialView(frame: CGRect(x: 0, y: 0, width: 667, height: 375))
      expect(radialView) == snapshot()
    }
  }
}

private final class SpotlightRadialView: UIView {
  override func draw(_ rect: CGRect) {
    if let context = UIGraphicsGetCurrentContext() {
      UIColor.drawSpotlightGradient(context, frame: rect)
    }
  }
}

private final class LightRadialView: UIView {
  override func draw(_ rect: CGRect) {
    if let context = UIGraphicsGetCurrentContext() {
      UIColor.drawLightGreyGradient(context, frame: rect)
    }
  }
}
