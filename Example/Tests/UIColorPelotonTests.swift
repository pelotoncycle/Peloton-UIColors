// https://github.com/Quick/Quick

import UIKit
import Quick
import Nimble
import Nimble_Snapshots
import Peloton_UIColors

class UIColorPelotonSpec: QuickSpec {
  
  override func spec() {
    var view: UIView!
    
    beforeEach {
      view = UIView(frame: CGRectMake(0, 0, 200, 200))
    }
    
    it("pelotonSuperRed looks right") {
      view.backgroundColor = UIColor.pelotonSuperRed()
      expect(view) == snapshot()
    }
    
    it("pelotonBlueBlack looks right") {
      view.backgroundColor = UIColor.pelotonBlueBlack()
      expect(view) == snapshot()
    }
    
    it("pelotonSlateGrey looks right") {
      view.backgroundColor = UIColor.pelotonSlateGrey()
      expect(view) == snapshot()
    }
    
    it("pelotonMediumGrey looks right") {
      view.backgroundColor = UIColor.pelotonMediumGrey()
      expect(view) == snapshot()
    }
    
    it("pelotonLightGrey looks right") {
      view.backgroundColor = UIColor.pelotonLightGrey()
      expect(view) == snapshot()
    }
    
    it("pelotonBlueWhite looks right") {
      view.backgroundColor = UIColor.pelotonBlueWhite()
      expect(view) == snapshot()
    }
    
  }
}