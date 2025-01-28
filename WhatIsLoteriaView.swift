//
//  WhatIsLoteriaView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI

struct WhatIsLoteriaView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            HStack(alignment: .center) {
                Text(Strings.WhatIsLoteriaView.tittle)
                    .font(.extraLargeBold)
                    .foregroundColor(.pink)
                    .shadow(radius:5)
                    .padding(.top, 50)
            }
            
            Spacer(minLength: 30)
            
            VStack{
                Text(Strings.WhatIsLoteriaView.describe)
                    .font(.mediumRegular)
            }
            Spacer(minLength: 30)
            
            VStack(alignment: .leading){
                Text(Strings.WhatIsLoteriaView.reglas)
                    .font(.extraLargeRegular)
                    .foregroundColor(.pink)
                    .shadow(radius:5)
            }
            
            Spacer(minLength: 30)
            
            Group{
                VStack(alignment: .leading){
                    Text(Strings.WhatIsLoteriaView.regla1)
                    Text(Strings.WhatIsLoteriaView.regla2)
                    Text(Strings.WhatIsLoteriaView.regla3)
                    Text(Strings.WhatIsLoteriaView.regla4)
                    Text(Strings.WhatIsLoteriaView.regla5)
                    Text(Strings.WhatIsLoteriaView.regla6)
                    Text(Strings.WhatIsLoteriaView.regla7)
                    Text(Strings.WhatIsLoteriaView.regla8)
                }
                .font(.mediumRegular)
            }
            
                Spacer(minLength: 30)
            
            Group{
            VStack{
                Text(Strings.WhatIsLoteriaView.alineaciones).font(.system(size: 50))
                .foregroundColor(.pink)
                .shadow(radius:5)
            }
                Spacer(minLength: 30)
                VStack{
                    Text(Strings.WhatIsLoteriaView.win)
                        .font(.mediumBold)
                        .foregroundColor(.black)
                Spacer(minLength: 15)
                    Text(Strings.WhatIsLoteriaView.win1)
                        .font(.mediumRegular)
                CardView(card: Card(cardMode: .display, number: "win6"))
                Spacer(minLength: 50)
            }
            VStack{
                Text(Strings.WhatIsLoteriaView.win2)
                    .font(.mediumBold)
                .foregroundColor(.black)
                Spacer(minLength: 15)
                Text(Strings.WhatIsLoteriaView.win3)
                    .font(.mediumRegular)
                CardView(card: Card(cardMode: .display, number: "win2"))
                Spacer(minLength: 50)
            }
            VStack{
                Text(Strings.WhatIsLoteriaView.win4)
                    .font(.mediumBold)
                    .foregroundColor(.black)
                Spacer(minLength: 15)
                Text(Strings.WhatIsLoteriaView.win5)
                    .font(.mediumRegular)
                CardView(card: Card(cardMode: .display, number: "win3"))
                Spacer(minLength: 50)
            }
                VStack{
                    Text(Strings.WhatIsLoteriaView.win6)
                        .font(.mediumBold)
                        .foregroundColor(.black)
                    Spacer(minLength: 15)
                    Text(Strings.WhatIsLoteriaView.win7)
                        .font(.mediumRegular)
                    CardView(card: Card(cardMode: .display, number: "win4"))
                    CardView(card: Card(cardMode: .display, number: "win5"))
                }
            }
        })
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Image("background"))
    }
}

struct WhatIsLoteriaView_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsLoteriaView()
    }
}
