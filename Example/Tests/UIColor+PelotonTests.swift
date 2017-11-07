import UIKit
import Quick
import Nimble
import Nimble_Snapshots
import Peloton_UIColors

final class UIColorPelotonSpec: QuickSpec {
  // swiftlint:disable function_body_length
  override func spec() {
    var view: UIView!

    describe("greys") {
      beforeEach {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
      }

      it("pelotonSlateGrey looks right") {
        view.backgroundColor = .pelotonSlateGrey
        expect(view) == snapshot()
      }

      it("pelotonDarkSlateGrey looks right") {
        view.backgroundColor = .pelotonDarkSlateGrey
        expect(view) == snapshot()
      }

      it("pelotonMediumGrey looks right") {
        view.backgroundColor = .pelotonMediumGrey
        expect(view) == snapshot()
      }

      it("pelotonMediumDarkGrey looks right") {
        view.backgroundColor = .pelotonMediumDarkGrey
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

      it("pelotonVeryLightGrey looks right") {
        view.backgroundColor = .pelotonVeryLightGrey
        expect(view) == snapshot()
      }
    }

    describe("others") {
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

      it("pelotonBlueWhite looks right") {
        view.backgroundColor = .pelotonBlueWhite
        expect(view) == snapshot()
      }

      it("pelotonYellow looks right") {
        view.backgroundColor = .pelotonYellow
        expect(view) == snapshot()
      }
        
      it("pelotonDarkBlue looks right") {
        view.backgroundColor = .pelotonDarkBlue
        expect(view) == snapshot()
      }
    }

    describe("zone colors") {
      beforeEach {
        view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
      }

      it("pelotonHeartRateZone1 looks right") {
        view.backgroundColor = .pelotonHeartRateZone1
        expect(view) == snapshot()
      }

      it("pelotonHeartRateZone2 looks right") {
        view.backgroundColor = .pelotonHeartRateZone2
        expect(view) == snapshot()
      }

      it("pelotonHeartRateZone3 looks right") {
        view.backgroundColor = .pelotonHeartRateZone3
        expect(view) == snapshot()
      }

      it("pelotonHeartRateZone4 looks right") {
        view.backgroundColor = .pelotonHeartRateZone4
        expect(view) == snapshot()
      }

      it("pelotonHeartRateZone5 looks right") {
        view.backgroundColor = .pelotonHeartRateZone5
        expect(view) == snapshot()
      }
    }

    describe("gradients") {
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
}

private final class SpotlightRadialView: UIView {
  override func draw(_ rect: CGRect) {
    guard let context = UIGraphicsGetCurrentContext() else { return }

    UIColor.drawSpotlightGradient(context, frame: rect)
  }
}

private final class LightRadialView: UIView {
  override func draw(_ rect: CGRect) {
    guard let context = UIGraphicsGetCurrentContext() else { return }

    UIColor.drawLightGreyGradient(context, frame: rect)
  }
}
