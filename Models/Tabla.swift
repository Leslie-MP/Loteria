//
//  GameManager.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/9/23.
//

import Foundation

class Tabla{
    var cards:[[Card]] = []
    var values:[[String]]
    var number: Int
    var beansSoFar = 0
    
    fileprivate init(values: [[String]], number: Int) {
        self.values = values
        for row in values{
            var fRow:[Card] = []
            for card in row{
                fRow.append(Card(number: card))
            }
            cards.append(fRow)
        }
        self.number = number
    }
    
    func playBean(newCard: Card){
        for row in cards{
            for card in row{
                if card.number == newCard.number{
                    card.isSelected = true
                    beansSoFar += 1
                    
                    didWin(count: beansSoFar)
                    return
                }
            }
        }
    }
    
    func checkIfWon() {
        var count = 0
        
        for row in cards {
            for card in row {
                if card.isSelected {
                    count += 1;
                }
            }
        }
        didWin(count: count)
      
    }
    
    private func didWin(count: Int){
        
        if count >= 16 {
            GameAppState.shared.setGameWon()
            
            cleanUp()
        }
    }
    
    func cleanUp() {
        beansSoFar = 0
        for row in cards {
            for card in row {
                card.isSelected = false
            }
        }
    }
    
}

extension Tabla{
    static let tablaUno:Tabla = {
        let values = [
        ["1","2","3","4"],
        ["10","11","12","13"],
        ["19","20","21", "22"],
        ["28","29","30","31"]
        ]
        
        return Tabla(values: values, number: 1)
    }()
    
    static let tablaDos:Tabla = {
        let values = [
        ["6","7","8","9"],
        ["15","16","17","18"],
        ["24","25","26", "27"],
        ["33","34","35","36"]
        ]
        
        return Tabla(values: values, number: 2)
    }()
    
    static let tablaTres:Tabla = {
        let values = [
        ["2","3","4","5"],
        ["7","8","9","10"],
        ["12","13","14", "15"],
        ["17","18","19","20"]
        ]
        
        return Tabla(values: values, number: 3)
    }()
    
    static let tablaCuatro:Tabla = {
        let values = [
        ["43","44","45","21"],
        ["52","53","54","26"],
        ["7","8","9", "31"],
        ["16","17","18","36"]
        ]
        
        return Tabla(values: values, number: 4)
    }()
    
    static let tablaCinco:Tabla = {
        let values = [
        ["22","23","24","25"],
        ["27","28","29","30"],
        ["32","33","34", "35"],
        ["37","38","39","40"]
        ]
        
        return Tabla(values: values, number: 5)
    }()
    
    static let tablaSeis:Tabla = {
        let values = [
        ["21","22","23","24"],
        ["30","31","32","33"],
        ["39","40","41", "42"],
        ["48","49","50","51"]
        ]
        
        return Tabla(values: values, number: 6)
    }()
    
    static let tablaSiete:Tabla = {
        let values = [
        ["25","26","27","41"],
        ["34","35","36","46"],
        ["43","44","45", "51"],
        ["52","53","54","32"]
        ]
        
        return Tabla(values: values, number: 7)
    }()
    
    static let tablaOcho:Tabla = {
        let values = [
        ["42","43","44","45"],
        ["47","48","49","50"],
        ["52","53","54", "1"],
        ["40","10","19","20"]
        ]
        
        return Tabla(values: values, number: 8)
    }()
    
    static let tablaNueve:Tabla = {
        let values = [
        ["41","42","37","38"],
        ["50","51","46","47"],
        ["5","6","1", "2"],
        ["14","15","10","11"]
        ]
        
        return Tabla(values: values, number: 9)
    }()
    
    static let tablaDiez:Tabla = {
        let values = [
        ["39","40","19","20"],
        ["48","49","28","29"],
        ["3","4","37", "38"],
        ["12","13","46","47"]
        ]
        
        return Tabla(values: values, number: 10)
    }()
    
    static func withTabla(tablaNo: Int) -> Tabla {
        switch (tablaNo) {
        case 1: return Tabla.tablaUno
        case 2: return Tabla.tablaDos
        case 3: return Tabla.tablaTres
        case 4: return Tabla.tablaCuatro
        case 5: return Tabla.tablaCinco
        case 6: return Tabla.tablaSeis
        case 7: return Tabla.tablaSiete
        case 8: return Tabla.tablaOcho
        case 9: return Tabla.tablaNueve
            
        default: return Tabla.tablaDiez
        }
    }
}
