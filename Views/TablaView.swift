//
//  SwiftUIView.swift
//  
//
//  Created by Leslie Mora Ponce on 4/9/23.
//

import SwiftUI

struct TablaView: View {
    
    @State var tabla: Tabla
    @ObservedObject var gameAppState: GameAppState
    init(tabla: Tabla) {
        self.tabla = tabla
        self.gameAppState = GameAppState.shared
    }
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 0) {
               VStack(alignment: .center, spacing: 0) {
                   HStack(alignment: .center, spacing: 0) {
                       Text("Loteria")
                           .font(.mediumRegular)
                       Spacer()
                       Text("Tabla No.\(tabla.number)")
                           .font(.mediumRegular)
                   }
                 
                   .padding(0)
               }
               .background(Color.white)
                ForEach(tabla.cards, id:\.self){ row in
                    Row(rowData: row)
                }
            }
            .padding(.top, 8)
            .padding([.bottom, .horizontal], 16)
            
            .onChange(of: gameAppState.currCard, perform: { newValue in
                if gameAppState.isAssistedPlayEnabled{
                    tabla.playBean(newCard: newValue)
                }
            })
        }

     

    
    }
}

struct Row: View {
    var rowData: [Card]
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 0) {
            ForEach(rowData, id: \.number) {
                id in
                CardView(card: id)
                    .aspectRatio(323/512, contentMode: .fill)
                    .border(Color.black)
            }
        }
    }
}


struct TablaView_Previews: PreviewProvider {
    static var previews: some View {
        TablaView(tabla: Tabla.tablaDiez)
            .previewLayout(PreviewLayout.fixed(width: 603.2, height: 832))
    }
}

struct PlayCardView1_Previews: PreviewProvider {
    static var previews: some View {
        PlayCardView(tablaNo: 5)
    }
}

