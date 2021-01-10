//
//  Game.swift
//  KataBowling
//
//  Created by 1641140 on 08/01/21.
//

import Foundation

struct Game : BowlingGameProtocol {
    
    private var pinScores = Array<Int>()
    var currentRoll = 0
    
    
    init()
    {
        pinScores = Array<Int>.init(repeating: 0, count: 21)
        currentRoll = 0
    }
        
    // Player rolls the balls, and the number of pins that fall
    mutating func roll(fallenPins: Int)
    {
        if fallenPins > 10 {
            return
        }
        pinScores[currentRoll] = fallenPins
        currentRoll += 1
    }
    
    // Gets the final score from all the frame score
    func score() -> Int
    {
        return self.calculateTotalScore(pinScores)
    }
    
}
