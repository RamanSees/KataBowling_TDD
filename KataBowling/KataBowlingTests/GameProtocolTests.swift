//
//  GameProtocolTests.swift
//  KataBowlingTests
//
//  Created by 1641140 on 09/01/21.
//

import XCTest
@testable import KataBowling

class GameProtocolTests: XCTestCase {

    var dummyProtocolTestClass = DummyBowlingGameProtocol()
    
    override func setUpWithError() throws {
        
        
    }
    
    func test_is_roll_method_called()
    {
        dummyProtocolTestClass.roll(fallenPins: 10)
        XCTAssertEqual(dummyProtocolTestClass.isRollCalled, true)
    }
    
    func test_is_calculate_score_called()
    {
        _ = dummyProtocolTestClass.calculateTotalScore(Array.init(arrayLiteral: 1,2,3,4))
        XCTAssertEqual(dummyProtocolTestClass.isCalculateTotalScoreCalled, true)
    }
    
    func test_is_valid_pin_score()
    {
        dummyProtocolTestClass.roll(fallenPins: 10)
        XCTAssertEqual(dummyProtocolTestClass.fallenPinCount, 10)
    }


}
