//
//  ContentView.swift
//

import SwiftUI

struct ResultView: View {
    @State var userHand: String = "gu"
    @State var comHand: String = "gu"
    @State var result: String = ""
    var body: some View {
        VStack (alignment: HorizontalAlignment.center, spacing: 10) {
            Text(result).font(Font.system(size: 32))
            Spacer()
            Text("COMの手")
            Image("com-\(comHand)")
        }
        .padding(20)
        .navigationBarTitle(Text("じゃんけん結果だよ"))
        .onAppear {
            self.comHand = self.choiceComHand()
            self.result = self.judgeResult(userHand: self.userHand, comHand: self.comHand)
        }
    }
    private func choiceComHand() -> String {
        let choices = ["gu", "choki", "pa"]
        let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
        return choices[randomIndex]
    }
    private func judgeResult(userHand: String, comHand: String) -> String {
        
        if userHand == "gu" {
            if comHand == "gu" {
                return "あいこ"
            } else if comHand == "choki" {
                return "勝ち"
            } else if comHand == "pa" {
                return "負け"
            }
        } else if userHand == "choki" {
            if comHand == "gu" {
                return "負け"
            } else if comHand == "choki" {
                return "あいこ"
            } else if comHand == "pa" {
                return "勝ち"
            }
        } else if userHand == "pa" {
            if comHand == "gu" {
                return "勝ち"
            } else if comHand == "choki" {
                return "負け"
            } else if comHand == "pa" {
                return "あいこ"
            }
        }
        
        return ""
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(userHand: "gu")
    }
}

