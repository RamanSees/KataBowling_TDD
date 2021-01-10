//
//  GameTests.swift
//  KataBowlingTests
//
//  Created by 1641140 on 07/01/21.
//

import XCTest
@testable import KataBowling

class GameTests: XCTestCase {
    
    var game: Game = Game.init()

    override func setUpWithError() throws {
        game = Game.init()
    }
    
    func test_valid_rolls()
    {
        game.roll(fallenPins: 5)
        XCTAssertEqual(game.currentRoll, 1)
    }
    
    func test_invalid_rolls()
    {
        game.roll(fallenPins: 15)
        XCTAssertEqual(game.currentRoll, 0)
    }
    
    func test_valid_scores()
    {
        game.roll(fallenPins: 8)
        game.roll(fallenPins: 1)
        XCTAssertEqual(game.score(), 9)
    }
    
    func test_invalid_scores()
    {
        game.roll(fallenPins: 0)
        game.roll(fallenPins: 0)
        
        game.roll(fallenPins: 10)
        XCTAssertNotEqual(game.score(), 11) 
    }
    
    func test_valid_stikes()
    {
        game.roll(fallenPins: 10)
        game.roll(fallenPins: 10)
        XCTAssertEqual(game.score(), 30)
    }
    
    func test_invalid_strikes()
    {
        game.roll(fallenPins: 9)
        game.roll(fallenPins: 9)
        XCTAssertEqual(game.score(), 18)
    }

    func test_valid_spares()
    {
        game.roll(fallenPins: 9)
        game.roll(fallenPins: 1)
        
        game.roll(fallenPins: 1)
        game.roll(fallenPins: 1)
        XCTAssertEqual(game.score(), 13)
    }
    
    func test_invalid_spares()
    {
        game.roll(fallenPins: 2)
        game.roll(fallenPins: 7)
        
        game.roll(fallenPins: 5)
        game.roll(fallenPins: 5)
        XCTAssertEqual(game.score(), 19)
    }
    
    
    
    
    
    
}
