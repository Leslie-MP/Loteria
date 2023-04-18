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
    var body: some View {
        VStack(alignment: .center, spacing: 32) {
            Text("Settings")
                .font(.system(size: 96))
                .foregroundColor(.pink)
                .shadow(radius:5)
                .padding(.top, 50)
            
            Toggle("Assisted Play", isOn: $assistedIsOn)
                .font(.system(size: 30))
            Toggle("Call Cards", isOn: $callingCards)
                .font(.system(size: 30))
            VStack(alignment: .leading, spacing: 4) {
                Text("Select Speed")
                    .font(.system(size: 25))
                Picker("Speed", selection: $selectedSpeed) {
                    Text("Slow").tag(0)
                    Text("Medium").tag(1)
                    Text("Fast").tag(2)
                }
                .pickerStyle(.segmented)
            }
            Spacer(minLength: 30)
            
                 
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 254.0/255.0, green: 255.0/255.0, blue: 86.0/255.0))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
