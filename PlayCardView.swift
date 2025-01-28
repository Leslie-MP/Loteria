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
    @State var tabla: Tabla
    @State var showWonAlert: Bool = false
    
    init(tablaNo: Int) {
        self.tablaNo = tablaNo
        self.tabla = Tabla.withTabla(tablaNo: tablaNo)
        self.gameAppState = GameAppState.shared
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            GeometryReader { proxy in
                VStack(alignment: .leading, spacing: 8) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(alignment: .center, spacing: 0) {
                            Text(Strings.PlayCardView.game)
                                .font(.smallRegular)
                            Spacer()
                            Text("\(gameAppState.timeCount)s").font(.smallBold)
                            Spacer()
                            Text(gameAppState.currCard.name)
                                .font(.smallBold)
                        }
                        HStack(alignment: .center, spacing: 0) {
                            CardView(card: gameAppState.prev3Card)
                                .shadow(radius: 10)
                                .offset(x: 0, y:0)
                            CardView(card: gameAppState.prev2Card)
                                .shadow(radius: 10)
                                .offset(x: -50, y:0)
                            CardView(card: gameAppState.prev1Card)
                                .shadow(radius: 10)
                                .offset(x: -100, y:0)
                            Spacer()
                            CardView(card: gameAppState.currCard)
                            
                        }
                    }
                    .padding(16)
                    .frame(width: proxy.size.width, height: proxy.size.height * 0.25, alignment: .leading)
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .top, spacing: 4) {
                            HStack {
                                
                                VStack {
                                    TablaView(tabla: Tabla.withTabla(tablaNo: tablaNo))
                                        .frame(height: proxy.size.height * 0.75)
                                        .fixedSize()
                                        .padding(10)
                                }
                                .background(Color.white)
                            }
                            .frame(width: proxy.size.width * 0.80)
                            VStack(alignment: .center, spacing: 4) {
                                Spacer()
                                Button {
                                    
                                    
                                    if gameAppState.isGameRunning == false{
                                        print("Star Game")
                                        gameAppState.startGame()
                                    }else{
                                        gameAppState.nextCard()
                                        print("Next Card")
                                    }
                                } label: {
                                    VStack(alignment: .center, spacing: 4){
                                        Image(systemName:"chevron.forward.2")
                                            .resizable()
                                            .aspectRatio(1.0, contentMode: .fit)
                                        Text(Strings.PlayCardView.next)
                                            .font(.mediumBold)
                                    }
                                    .padding(36)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .clipped()
                                }
                                .padding(.horizontal, 36)
                                Button {
                                    print("Loteria")
                                    tabla.checkIfWon()
                                } label: {
                                    VStack(alignment: .center, spacing: 0){
                                        Image(systemName:"party.popper.fill")
                                            .resizable()
                                            .aspectRatio(1.0, contentMode: .fit)
                                            .frame(height: 48)
                                        ForEach(["L","o","t","e","r","i","a","!"], id: \.self) { letter in
                                            Text(letter)
                                                .font(.largeBold)
                                        }
                                        
                                    }
                                    .padding(36)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .clipped()
                                    
                                    
                                }
                                .padding(36)
                                Spacer(minLength: 16)
                            }
                            .frame(width: proxy.size.width * 0.20)
                        }
                    }
                    .frame(width: proxy.size.width, height: proxy.size.height * 0.75, alignment: .leading)
                    
                }
                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .leading)
                
            }
            
        }.onAppear {
            tabla = Tabla.withTabla(tablaNo: tablaNo)
        }
        .onDisappear {
            tabla.cleanUp()
            gameAppState.endGame()
        }
        .onChange(of: gameAppState.didWin, perform: { newValue in
            showWonAlert = newValue
        })
        .overlay(content: {
            EmptyView()
                .alertMessageView(isPresented: $showWonAlert, title: Strings.PlayCardView.youWonTitle, subtitle: Strings.PlayCardView.youWonSubtitle, actionTitle: Strings.PlayCardView.playAgain) {
                    gameAppState.startGame()
                }
        })
        .background(Image("background"))
    }
}

struct PlayCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlayCardView(tablaNo: 5)
    }
}
