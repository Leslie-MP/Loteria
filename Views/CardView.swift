//
//  SwiftUIView.swift
//
//
//  Created by Leslie Mora Ponce on 4/9/23.
//

import SwiftUI


struct CardView: View {
    
    struct Size {
        static var beanSizeSmall = 70.0
    }
    
    @ObservedObject var card: Card
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            ZStack(alignment: Alignment.center) {
                GeometryReader { proxy in
                    Image(card.number)
                        .resizable()
                        .padding(card.mode == .display ? 10 :0)
                    
                    if card.isSelected {
                        Image("bean")
                            .resizable()
                            .scaledToFit()
                            .frame(width: proxy.size.width * 0.40)
                            .offset(x:(proxy.size.width/2 - (proxy.size.width * 0.40)/2),  y:proxy.size.height/2 - (proxy.size.width * 0.40)/2)

                    }
                    
                }
            }
            .onChange(of: card.isSelected, perform: { newValue in
                GameAppState.shared.playTap()
            })
            .background(Color.white)
            .cornerRadius(card.mode == .display ? 12:0)
            .aspectRatio(323/512, contentMode: .fit)
            
    }
        .onTapGesture {
            if card.mode == .embed && GameAppState.shared.canPlaybean(cardNo: card.number) {
                card.isSelected = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        TablaView(tabla: .tablaCinco)
//        CardView(card: Card(cardMode: .display, number: "2"))

//            .previewLayout(.fixed(width: 142.8, height: 200))
    }
}


