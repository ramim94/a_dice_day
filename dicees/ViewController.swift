//
//  ViewController.swift
//  dicees
//
//  Created by Mohaimanul Hoque Chowdhury on 1/23/19.
//  Copyright © 2019 Mohaimanul Hoque Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomIndexNumberOne : Int = 0;
    var randomIndexNumberTwo : Int = 0;
    
    let diceImageArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    @IBAction func rollDiceButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomIndexNumberOne = Int.random(in: 0 ... 5)
        randomIndexNumberTwo = Int.random(in: 0...5)
        diceImageView1.image = UIImage(named: diceImageArray[randomIndexNumberOne])
        
        diceImageView2.image = UIImage(named: diceImageArray[randomIndexNumberTwo])
    }
}

