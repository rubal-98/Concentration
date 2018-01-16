//
//  Concentration.swift
//  Concentration
//
//  Created by SAVREEN KAUR on 08/12/17.
//  Copyright © 2017 SAVREEN KAUR. All rights reserved.
//

import Foundation

class Concentration{
    
    var cards = [Card]()
    
    func chooseCard(at index : Int){
        if cards[index].isFaceUp{
            cards[index].isFaceUp=false
        }
        else{
            cards[index].isFaceUp=true
        }
    }
    init(numberOfPairsOfCards : Int){
        for _ in 0...numberOfPairsOfCards{
            let card=Card()
            //cards+=[card,card]
            cards.append(card)
            cards.append(card)
        }
        //todo:shuffle the cards
    }
}
