import SwiftUI

struct ContentView: View {
    var body: some View {
        StartView().onAppear{
            GameAppState.shared.initGame()
        }
    }
}

