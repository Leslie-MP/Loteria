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
                Image(card.number)
                    .resizable()
                    .aspectRatio(0.7142857143, contentMode: ContentMode.fit)
                    .padding(card.mode == .display ? 12:0)
                
                if card.isSelected {
                    Image("bean")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Size.beanSizeSmall)
                }
                
            }
            .background(Color.white)
            .cornerRadius(card.mode == .display ? 12:0)
    }
        .onTapGesture {
            if card.mode == .embed && GameAppState.shared.canPlaybean(cardNo: card.number) {
                card.isSelected = true
                print("me presione")
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(number: "2"))

            .previewLayout(.fixed(width: 142.8, height: 200))
    }
}
