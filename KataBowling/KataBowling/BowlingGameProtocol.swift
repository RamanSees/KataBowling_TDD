//
//  BowlingGameProtocol.swift
//  KataBowling
//
//  Created by 1641140 on 08/01/21.
//

import Foundation

public protocol BowlingGameProtocol {
    
    mutating func roll(fallenPins: Int)
    
    func calculateTotalScore(_ individualScores : Array<Int>) -> Int
}

extension BowlingGameProtocol {

    func calculateTotalScore(_ framesScore : Array<Int>) -> Int
    {
        var roll = 0
        var strikePoint = 0
        var sparePoint = 0
        
        for _ in 1...10
        {
            if isStrikeGame(framesScore[roll])
            {
                strikePoint += framesScore[roll + 1] + framesScore[roll + 2]
                roll += 1
            }
            else if isSpareGame(framesScore[roll], framesScore[roll + 1])
            {
                sparePoint += framesScore[roll + 2]
                roll += 2
            }
            else
            {
                roll += 2
            }
        }
        return framesScore.reduce(0, +) + strikePoint + sparePoint
    }
    
    private func isSpareGame(_ firstRoundPins: Int, _ secoundRoundPins: Int) -> Bool
    {
        return firstRoundPins + secoundRoundPins == 10 ? true : false
    }
    
    private func isStrikeGame(_ firstRoundPins: Int) -> Bool
    {
            return firstRoundPins == 10 ? true : false
    }
    
}
