//
//  MenuView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI

struct OptionView: View {
    var title: String
    var imageName: String
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(8)
                .frame(maxWidth: 64)
            Text(title)
                    .font(.system(size:64,weight: .bold, design:.default))
                    .foregroundColor(.black)
                    .padding(16)
        }
        .background(Color.white)
        .cornerRadius(16)
    }
}

struct MenuView: View {
    var body: some View {
        if #available(iOS 16.0, *){
            NavigationStack{
                VStack(alignment: .center, content: {
                        Text("Menu")
                            .font(.system(size: 96))
                            .foregroundColor(.pink)
                            .shadow(radius:5)
                            .padding(.top, 50)
                        Spacer(minLength: 30)
                        NavigationLink {
                        SelectTablaView(shouldStartGame: true)
                        } label: {
                        OptionView(title: "Play", imageName: "hand.point.up.braille.fill")
                        }
                        Spacer(minLength: 30)
                        NavigationLink {
                            StartView()
                        } label: {
                            OptionView(title: "Call Carts", imageName: "person.2.wave.2.fill")
                        }
                        Spacer(minLength: 30)
                        NavigationLink {
                            SettingsView()
                        }  label: {
                            OptionView(title: "Settings", imageName: "gearshape.2.fill")
                        }
                    Spacer(minLength: 30)
                    NavigationLink{
                        WhatIsLoteriaView()
                    } label: {
                        OptionView(title: "What is Loteria", imageName: "person.fill.questionmark")
                    }
                    Spacer(minLength: 30)
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0))
            }.navigationDestination(for: String.self) { hash in
                TablaView(tabla: .tablaCinco)
            }
        }
    }
}
    struct MenuView_Previews: PreviewProvider {
        static var previews: some View {
            MenuView().previewDevice(PreviewDevice(stringLiteral: "iPad Pro (11-inch)"))
        }
        
    }

