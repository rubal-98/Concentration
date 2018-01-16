//
//  Card.swift
//  Concentration
//
//  Created by SAVREEN KAUR on 08/12/17.
//  Copyright © 2017 SAVREEN KAUR. All rights reserved.
//

import Foundation

struct Card{
    var isFaceUp=false
    var isMatched=false
    var identifier:Int
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int{
        identifierFactory+=1
        return identifierFactory
    }
    init(){
        self.identifier=Card.getUniqueIdentifier()
    }
    
}
