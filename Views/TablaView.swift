//
//  SwiftUIView.swift
//  
//
//  Created by Leslie Mora Ponce on 4/9/23.
//

import SwiftUI

struct TablaView: View {
    
    var tabla: Tabla
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    Text("Loteria")
                        .padding(.leading, 24)
                    Spacer()
                    Text("Tabla No. 10")
                        .padding(.trailing, 24)
                }.frame(minHeight: 32, maxHeight: 32)
                ForEach(tabla.cards, id:\.self){ row in
                    Row(rowData: row)
                }
                .padding(0)
            }
            
            .background(Color.white)

        }
        .background(Color.white)
        .padding(.top, 8)
        .padding([.bottom, .horizontal], 16)

    
    }
}

struct Row: View {
    var rowData: [Card]
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 0) {
            ForEach(rowData, id: \.number) {
                id in
                CardView(card: id)
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
