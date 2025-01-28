//
//  SwiftUIView.swift
//  
//
//  Created by Sergio Solo on 4/19/23.
//

import SwiftUI

struct OptionView: View {
    var title: String
    var imageName: String?
    
    
    enum OptionViewSize {
        case large
        case medium
        case small
    }
    
    private var font: Font
    private var imageSize: CGFloat
    
    init(title: String, imageName: String? = nil, size: OptionViewSize = .large) {
        self.title = title
        self.imageName = imageName
        
        switch size {
        case .large:
            font = .extraLargeBold
            imageSize = 64.0
        case .medium:
            font = .mediumBold
            imageSize = 48.0
        case .small:
            font = .smallBold
            imageSize = 24.0
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize, height: imageSize)
                    .padding(.leading, 16)
            }
            Spacer()
            Text(title)
                .font(self.font)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white.shadow(color: .black, radius: 50, x: 0, y: 0))
        .cornerRadius(10)
    }
}

struct OptionView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView(title: "This is a test")
    }
}
