//
//  SelectTablaView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/15/23.
//

import SwiftUI

struct TablaCellView: View{
    var image: String
    var isSelected: Bool
    var body: some View{
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 600)
        }
        .border(Color.blue, width: isSelected ? 10: 0)
    }
}
struct SelectTablaView: View {
    @State var selectedTable: Int = 0
    @State var shouldGoToTabla: Bool = false
    var shouldStartGame: Bool
    
    init(shouldStartGame: Bool = false) {
        self.shouldStartGame = shouldStartGame
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Select your Table")
                .font(.system(size: 96))
                .foregroundColor(.black)
                .shadow(radius:5)
                .padding(.top, 36)
            ScrollView(.horizontal, showsIndicators: true) {
                LazyHStack(alignment: .center, spacing: 16) {
                    TablaCellView( image: "Tabla1", isSelected: selectedTable == 1)
                        .onTapGesture {
                            selectedTable = 1
                        }
                    TablaCellView( image: "Tabla2", isSelected: selectedTable == 2)
                        .onTapGesture {
                            selectedTable = 2
                        }
                    TablaCellView( image: "Tabla3", isSelected: selectedTable == 3)
                        .onTapGesture {
                            selectedTable = 3
                        }
                    TablaCellView( image: "Tabla4", isSelected: selectedTable == 4)
                        .onTapGesture {
                            selectedTable = 4
                        }
                    TablaCellView( image: "Tabla5", isSelected: selectedTable == 5)
                        .onTapGesture {
                            selectedTable = 5
                        }
                    TablaCellView( image: "Tabla6", isSelected: selectedTable == 6)
                        .onTapGesture {
                            selectedTable = 6
                        }
                    TablaCellView( image: "Tabla7", isSelected: selectedTable == 7)
                        .onTapGesture {
                            selectedTable = 7
                        }
                    TablaCellView( image: "Tabla8", isSelected: selectedTable == 8)
                        .onTapGesture {
                            selectedTable = 8
                        }
                    TablaCellView( image: "Tabla9", isSelected: selectedTable == 9)
                        .onTapGesture {
                            selectedTable = 9
                        }
                    TablaCellView( image: "Tabla10", isSelected: selectedTable == 10)
                        .onTapGesture {
                            selectedTable = 10
                        }

                    }
            }
            Spacer(minLength: 20)
            Button {
                print("Next")
                shouldGoToTabla = true
            } label: {
                OptionView(title: "Next", imageName: "arrow.right")
            }

            }
        .padding(16)
        .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0))
        .overlay(
            NavigationLink("", destination: PlayCardView(tablaNo: selectedTable),  isActive: $shouldGoToTabla)
        )
    }
}

struct SelectTablaView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTablaView()
    }
}
