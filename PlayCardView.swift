//
//  PlayCardView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/16/23.
//

import SwiftUI

struct PlayCardView: View {
    
    struct Constants {
        static var screenHeight = UIScreen.main.bounds.height
    }
    var tablaNo: Int
    
    @ObservedObject var gameAppState: GameAppState
    
    init(tablaNo: Int) {
        self.tablaNo = tablaNo
        self.gameAppState = GameAppState.shared
    }
    
    var body: some View {
        VStack(alignment: .center) {
            VStack (alignment: .leading){
                HStack {
                    Text("Game on!")
                    Spacer()
                    Text(gameAppState.currCard.name)
                }
                HStack {
                    ZStack {
                        CardView(card: Card(cardMode: .display, number: "0"))
                            .shadow(radius: 10)
                            .offset(x: 0, y:0)
                        CardView(card: Card(cardMode: .display, number: "0"))
                            .shadow(radius: 10)
                            .offset(x: 50, y:0)
                        CardView(card: Card(cardMode: .display, number: "0"))
                            .shadow(radius: 10)
                            .offset(x: 100, y:0)
                    }
                    Spacer()
                    CardView(card: gameAppState.currCard)

                }
            }.frame(maxHeight: Constants.screenHeight * 0.20)
                .padding(.vertical, 24)
            HStack(alignment: .center){
                VStack(alignment: .leading) {
                    Spacer()
                    VStack {
                        TablaView(tabla: Tabla.withTabla(tablaNo: tablaNo))
                            .aspectRatio(contentMode: .fit)

                    }
                    .background(Color.white)
                    Spacer()
                }.frame(maxWidth: .infinity)
                Spacer()
                VStack(alignment: .center, spacing: 4) {
                    Button {
                        print("Next Card")
                        GameAppState.shared.nextCard()
                    } label: {
                        VStack(alignment: .center, spacing: 0){
                            Image(systemName:"chevron.forward.2")
                            .fixedSize()
                            .frame(maxWidth: 100)
                            .aspectRatio(1.0, contentMode: .fit)
                            Text("Next Card")
                        }
                        .fixedSize()
                        .frame(maxWidth: 120, maxHeight: 120)
                        .background(Color.white)
                        
                    }
                    .padding(.vertical, 12)
                    Button {
                        print("Loteria")
                    } label: {
                        VStack(alignment: .center, spacing: 0){
                            Image(systemName:"party.popper.fill")
                            .fixedSize()
                            .frame(maxWidth: 100)
                            .aspectRatio(1.0, contentMode: .fill)
                            Text("Loteria")
                        }
                        .frame(maxHeight: .infinity)
                    }
                    .frame(maxWidth: 120)
                    .background(Color.white)
                    .aspectRatio(contentMode: .fill)
                    .padding(.vertical, 12)

                }
                .background(Color.red)
                .aspectRatio(contentMode: .fill)
            }
            .background(Color.blue)
        }
        .padding(16)
         .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
         .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0)).onAppear{
             GameAppState.shared.statGame()
         }
    }
}

struct PlayCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlayCardView(tablaNo: 5)
    }
}
