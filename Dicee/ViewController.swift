//
//  ViewController.swift
//  Dicee
//
//  Created by Giulia Ariu on 08/10/2018.
//  Copyright © 2018 Giulia Ariu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rollButton: UIButton!
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 1
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.async {
            self.setupUI()
        }
        
        updateDiceImages()
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages()
    {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    func setupUI () {
        rollButton.layer.cornerRadius = 15
        rollButton.layer.shadowOpacity = 2
        rollButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        diceImageView1.layer.shadowOpacity = 2
        diceImageView1.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        diceImageView2.layer.shadowOpacity = 2
        diceImageView2.layer.shadowOffset = CGSize(width: 4, height: 4)
    }
    
}

