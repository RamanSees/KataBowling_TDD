//
//  ViewController.swift
//  KataBowling
//
//  Created by 1641140 on 07/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoresLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoresLabel.text = "Scores"
    }
    
   
    @IBAction func startGameTapped(_ sender: UIButton, forEvent event: UIEvent)
    {
        scoresLabel.text = ""
        startGame()
    }
    
    func startGame()
    {
        var game = Game()
        for _ in 1...21 {
            let fallenPins = Int.random(in: 1...10)
            game.roll(fallenPins: fallenPins)
            scoresLabel.text! += "\n Pins Knocked down :- \(fallenPins) | Frame Score :- \(game.score()) \n"
            
            if game.score() >= 300 {
                break
            }
        }
    }
}

