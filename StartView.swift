//
//  MenuView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI

struct StartView: View {
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    Spacer(minLength: 200)
                    Text(Strings.AppName)
                        .font(.extraLargeBold)
                        .foregroundColor(.pink)
                        .shadow(radius:5)
                    Text(Strings.StartView.subtitle).font(.extraLargeRegular)
                    HStack{
                        CardView(card: Card(cardMode: .display, number: "47"))
                            .rotationEffect(.degrees(-15))
                        CardView(card: Card(cardMode: .display, number: "1"))
                        CardView(card: Card(cardMode: .display, number: "41"))
                            .rotationEffect(.degrees(15))
                    }.padding(64)
                    Spacer()
                    NavigationLink {
                        MenuView()
                    } label: {
                        Text(Strings.StartView.startButton).font(.extraLargeBold)
                            .foregroundColor(.pink)
                    }
                    Spacer(minLength: 200)
                }
                .background(Image("background"))
            } .navigationDestination(for: String.self) { hash in
                TablaView(tabla: .tablaCinco)
            }
        } else {
            // TO DO: fix for old
            // Fallback on earlier versions
        }
        
    }
        
}
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
