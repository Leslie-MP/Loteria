//
//  GameAppState.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/16/23.
//

import Foundation
class GameAppState: ObservableObject {
    static var shared: GameAppState = GameAppState()
    private var rolledCards: [String] = []
    private var remainingCards: [String] = []
    @Published var isGameOver: Bool = false
    @Published var currCard: Card = Card(number: "1")
    
    func initGame() {
        for i in 1...54 {
            remainingCards.append(String(i))
        }
        remainingCards.shuffle()
        rolledCards = []
    }
    func nextCard(){
        guard remainingCards.isEmpty == false else{
            print ("Game Over")
            return
        }
        rolledCards.append(remainingCards.removeFirst())
        currCard = Card(cardMode: .display, isSelected: false, number: "\(rolledCards.last ?? "")")
    }
    func statGame () {
        initGame()
        nextCard()
        
    }
    func canPlaybean (cardNo: String) -> Bool {
        if rolledCards.contains(cardNo){
            return true
        }else{
            return false
        }
            
    }

 }
