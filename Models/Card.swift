//
//  File.swift
//  
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import Foundation
import SwiftUI

class Card: Hashable, ObservableObject {
    
    enum CardMode {
        case display
        case embed
    }

    @Published var isSelected = false
    var number: String
    var mode: CardMode
    var name: String
    
    init(cardMode: CardMode = .embed, isSelected: Bool = false, number: String, cardName: String? = nil) {
        self.isSelected = isSelected
        self.number = number
        self.mode = cardMode
        if let cardName = cardName {
            self.name = cardName
        } else {
            self.name = Strings.Cards.nameFromNumber(cardNo: number)
        }
        
    }
    
   
    static func == (lhs: Card, rhs: Card) -> Bool {
        lhs.number == rhs.number
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
    
}


extension Card {
    // empty card back model for quick access
    static var cardBack: Card{
        return Card(cardMode: .display, isSelected: false, number: "0", cardName: "Back")
    }
}

