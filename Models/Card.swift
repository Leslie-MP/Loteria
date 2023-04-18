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
    
    init(cardMode: CardMode = .embed, isSelected: Bool = false, number: String) {
        self.isSelected = isSelected
        self.number = number
        self.mode = cardMode
        self.name = Card.nameFromNumber(cardNo: number)
        
    }
    
   static func nameFromNumber(cardNo: String) -> String {
        
        switch cardNo {
        case "1": return "The Rooster"
        case "2": return "The Devil"
        case "3": return "The Lady"
        case "4": return "The Gentleman"
        case "5": return "The Umbrella"
        case "6": return "The Apple"
        case "7": return "The Ladder"
        case "8": return "The Bottle"
        case "9": return "The Barrel"
        case "10": return "The Tree"
        case "11": return "The Melon"
        case "12": return "The Brave Man"
        case "13": return "The Bonnet"
        case "14": return "The Death"
        case "15": return "The Pear"
        case "16": return "The Flag"
        case "17": return "The Mandolin"
        case "18": return "The Cello"
        case "19": return "The Heron"
        case "20": return "The Bird"
        case "21": return "The Hand"
        case "22": return "The Boot"
        case "23": return "The Moon"
        case "24": return "The Parrot"
        case "25": return "The Drunkard"
        case "26": return "The iphone"
        case "27": return "The Heart"
        case "28": return "The Watermelon"
        case "29": return "The Drum"
        case "30": return "The Shrimp"
        case "31": return "The Arrows"
        case "32": return "The Musician"
        case "33": return "The Spider"
        case "34": return "The Soldier"
        case "35": return "The Star"
        case "36": return "The Saucepan"
        case "37": return "The World"
        case "38": return "The ipad"
        case "39": return "The Cactus"
        case "40": return "The Scorpion"
        case "41": return "The Rose"
        case "42": return "The Skull"
        case "43": return "The Bell"
        case "44": return "The Water Pitcher"
        case "45": return "The Deer"
        case "46": return "The Sun"
        case "47": return "The Crown"
        case "48": return "The Canoe"
        case "49": return "The Pine Tree"
        case "50": return "The Fish"
        case "51": return "The Palm Tree"
        case "52": return "The Flowerpot"
        case "53": return "The Harp"
        case "54": return "The Frog"
        
            
        
        default: return "Back"
        }
    }
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        lhs.number == rhs.number
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
}



