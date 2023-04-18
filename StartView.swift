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
                    Text("Loteria")
                        .font(.system(size: 96))
                        .foregroundColor(.pink)
                        .shadow(radius:5)
                    Text("Mexican Tradition").font(.system(size: 64))
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
                        Text( " Start ").font(.system(size: 64, weight: .bold, design: .default))
                            .foregroundColor(.pink)
                    }
                    Spacer(minLength: 200)
                }
                .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0))
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
