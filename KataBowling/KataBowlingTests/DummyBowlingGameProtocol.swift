//
//  DummyBowlingGameProtocol.swift
//  KataBowlingTests
//
//  Created by 1641140 on 09/01/21.
//

import Foundation
import KataBowling

class DummyBowlingGameProtocol: BowlingGameProtocol{
    
    var isRollCalled = false
    var isCalculateTotalScoreCalled = false
    var fallenPinCount = 0
    
    func roll(fallenPins: Int) {
        isRollCalled = true
        fallenPinCount = fallenPins
    }
    
    func calculateTotalScore(_ individualScores: Array<Int>) -> Int {
        isCalculateTotalScoreCalled = true
        return 0
    }
    
}
