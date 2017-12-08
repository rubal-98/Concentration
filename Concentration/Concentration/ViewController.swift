//
//  ViewController.swift
//  Concentration
//
//  Created by SAVREEN KAUR on 08/12/17.
//  Copyright © 2017 SAVREEN KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount:Int=0{
        didSet{
             flipCountLabel.text="Flips: \(flipCount)"
        }
    }
    var emojiChoices = ["🎃","👻","🎃","👻","🎃","👻"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)
        { //print("cardNumber = \(String(describing: cardNumber))")
        flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        
    }
   
    @IBOutlet var cardButtons: [UIButton]!
    func flipCard(withEmoji emoji: String, on button: UIButton){
        //print("flipCard(withEmoji:\(emoji))")
        if (button.currentTitle==emoji){
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            
    }
        else{
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }

}
    
}
