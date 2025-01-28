//
//  SettingsView.swift
//  Loteria
//
//  Created by Leslie Mora Ponce on 4/16/23.
//

import SwiftUI
struct SettingsView: View {
    @State var assistedIsOn: Bool = false
    @State var callingCards: Bool = false
    @State var selectedSpeed: Int = 0
    @State var selectedLanguage: Int = 0
    @State var shouldGoToTabla: Bool = false
    @ObservedObject var gameAppState: GameAppState
    var tableNumber: Int?
    init(tableNumber: Int? = nil) {
        self.tableNumber = tableNumber
        gameAppState = GameAppState.shared
       
    }
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            Text(Strings.SettingsView.settings)
                .font(.extraLargeBold)
                .foregroundColor(.pink)
                .shadow(radius:5)
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Toggle(Strings.SettingsView.assist, isOn: $assistedIsOn)
                    .font(.mediumRegular)
                Text(Strings.SettingsView.text)
                    .font(.smallLight)
            }
            VStack(alignment: .leading, spacing: 4) {
                Toggle(Strings.SettingsView.call, isOn: $callingCards)
                    .font(.mediumRegular)
                Text(Strings.SettingsView.text1)
                    .font(.smallLight)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(Strings.SettingsView.velocidad)
                    .font(.mediumRegular)
                Picker(Strings.SettingsView.velocidad1,selection: $selectedSpeed) {
                    Text(Strings.SettingsView.lento).tag(0)
                    Text(Strings.SettingsView.medio).tag(1)
                    Text(Strings.SettingsView.rapido).tag(2)
                }
                .pickerStyle(.segmented)
                Text(Strings.SettingsView.text2)
                    .font(.smallLight)
            }
            .padding(.bottom,8)
            if tableNumber != nil {
                Button {
                    shouldGoToTabla = true
                } label: {
                    OptionView(title: Strings.SettingsView.empezar, imageName: "hand.point.up.braille.fill")
                }

            }
            else{
                VStack(alignment: .leading, spacing: 4) {
                    Text(Strings.SettingsView.language)
                        .font(.mediumRegular)
                    Picker(Strings.SettingsView.language,selection: $selectedLanguage) {
                        Text(Strings.SettingsView.english).tag(0)
                        Text(Strings.SettingsView.spanish).tag(1)
                    }
                    .pickerStyle(.segmented)
                  //  .colorMultiply(Color.pink)
                    Text(Strings.SettingsView.text3)
                        .font(.smallLight)
                }
                .padding(.bottom,24)
            }
            Spacer(minLength: 30)
            
                 
        }
        .onAppear{
            assistedIsOn = gameAppState.isAssistedPlayEnabled
            callingCards = gameAppState.isCalledCardEnabled
            selectedSpeed = gameAppState.speedGame
        }
        .onChange(of: assistedIsOn, perform: { newValue in
            gameAppState.toggleAssistedPlay(value: newValue)
        })
        .onChange(of: callingCards, perform: { newValue in
            gameAppState.toggleCallCards(value: newValue)
        })
        .onChange(of: selectedSpeed, perform: { newValue in
            gameAppState.setSelectSpeed(value: newValue)
        })
        .onChange(of: selectedLanguage, perform: {
            newValue in
            gameAppState.setLanguage(value: newValue)
        })
        .overlay(
            NavigationLink("", destination: PlayCardView(tablaNo: tableNumber ?? 1),  isActive: $shouldGoToTabla)
        )
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Image("background"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
