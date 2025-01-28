//
//  MenuView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI


struct MenuView: View {
    
    @State var isFirstTimeAlertPresent: Bool = true
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 24,content: {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 2)
                    
                Group {
                    NavigationLink {
                        SelectTablaView(shouldStartGame: true)
                    } label: {
                        OptionView(title: Strings.MenuView.jugar, imageName: "hand.point.up.braille.fill")
                    }
                    NavigationLink {
                        SettingsView()
                    }  label: {
                        OptionView(title: Strings.MenuView.ajustes, imageName: "gearshape.2.fill")
                    }
                    NavigationLink{
                        WhatIsLoteriaView()
                    } label: {
                        OptionView(title: Strings.MenuView.queEsLoteria, imageName: "person.fill.questionmark")
                    }
                }
                .padding(.horizontal, 48)
                Spacer(minLength: 30)
                    

            })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Image("background"))
            .toolbar {
                Button {
                    isFirstTimeAlertPresent = true
                } label: {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .frame(width: 24, height: 24, alignment: .center)
                        .scaledToFit()
                }


            }
        }
        
        .onAppear {
            isFirstTimeAlertPresent = GameAppState.shared.shownFirstHelp == false
        }
        .navigationTitle("Menu")
        
        .navigationViewStyle(.stack)
        .overlay {
            EmptyView()
                .alertMessageView(isPresented: $isFirstTimeAlertPresent, title: Strings.MenuView.aboutTitle, subtitle: Strings.MenuView.aboutsubTitle, actionTitle: Strings.MenuView.acceptButton) {
                    GameAppState.shared.setFirstHelpShown()
                }
        }
        
    }
}


    struct MenuView_Previews: PreviewProvider {
        static var previews: some View {
            MenuView().previewDevice(PreviewDevice(stringLiteral: "iPad Pro (11-inch)"))
        }
        
    }

