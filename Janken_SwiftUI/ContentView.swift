//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: HorizontalAlignment.center, spacing: 50) {
                NavigationLink(destination: ResultView(userHand: "gu")) {
                    Image("gu")
                }
                NavigationLink(destination: ResultView(userHand: "choki")) {
                    Image("choki")
                }
                NavigationLink(destination: ResultView(userHand: "pa")) {
                    Image("pa")
                }
            }.navigationBarTitle(Text("じゃんけん"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
