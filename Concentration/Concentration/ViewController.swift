//
//  ViewController.swift
//  Concentration
//
//  Created by SAVREEN KAUR on 08/12/17.
//  Copyright © 2017 SAVREEN KAUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count+1)/2)

    var flipCount:Int=0{
        didSet{
             flipCountLabel.text="Flips: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender)
        { //print("cardNumber = \(String(describing: cardNumber))")
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        
        }
        else{
            print("chosen card was not on card buttons")
        }
        
    }
    func updateViewFromModel() {
        for index in cardButtons.indices{
            let button=cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp{
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor =  #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            }
            else{
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
                
            }
        }
    }
    var emojiChoices = ["🎃","👻","💀","👹","😈","🤪"]
    var emoji = Dictionary<Int,String>()
    func emoji(for card:Card)->String{
        if emoji[card.identifier] == nil, emojiChoices.count>0{
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier]=emojiChoices.remove(at: randomIndex)
        }
       return emoji[card.identifier] ?? "?"
    }
    @IBOutlet var cardButtons: [UIButton]!
   
    
}
