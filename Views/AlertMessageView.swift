//
//  SwiftUIView.swift
//  
//
//  Created by Sergio Solo on 4/19/23.
//

import SwiftUI

struct AlertMessageView: View {
    
    struct Constants {
        static let screenWidth = UIScreen.main.bounds.width
    }
    
    @Binding var isPresented: Bool
    var actionTitle: String
    var completion: ()->Void?
    
    let title: String
    let subtitle: String
    
    
    init(isPresented: Binding<Bool>, title:String, subtitle: String, actionTitle: String, completion: @escaping () -> Void?) {
        self.title = title
        self.subtitle = subtitle
        self._isPresented = isPresented
        self.actionTitle = actionTitle
        self.completion = completion
    }
    
   
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                Spacer()
                VStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .top) {
                        Spacer()
                        Button {
                            print("Close")
                            self.isPresented = false
                        } label: {
                            Image(systemName: "x.circle")
                                .resizable()
                                .frame(width: 24, height: 24, alignment: .center)
                        }

                    }
                    Text(title)
                        .font(.largeBold)
                    Text(subtitle)
                        .font(.mediumRegular)
                    Spacer()
                    Button {
                        completion()
                        self.isPresented = false
                    } label: {
                        OptionView(title: actionTitle, size: .medium)
                    }
                }
                .padding(20)
                Spacer()
            }
            .border(Color.pink, width: 10)
            .frame(maxWidth: Constants.screenWidth, maxHeight: Constants.screenWidth, alignment: .center)
            .background(Image("background").resizable())
            .padding(24)
            Spacer()
        })
        .background(Color.black.opacity(0.4))
        
    }
}

struct AlertMessageView_Previews: PreviewProvider {
    static var previews: some View {
        AlertMessageView(isPresented: Binding<Bool>.constant(true), title: "title title title", subtitle: "descc descc descc", actionTitle: "accept") {
            print("accept ok")
        }
    }
}


extension View {
    @ViewBuilder
    func alertMessageView(isPresented: Binding<Bool>, title:String, subtitle: String, actionTitle: String, action: @escaping ()->Void) -> some View {
        if isPresented.wrappedValue {
            AlertMessageView(isPresented: isPresented, title: title, subtitle: subtitle, actionTitle: actionTitle, completion: action)
        } else {
            EmptyView()
        }
    }
}
