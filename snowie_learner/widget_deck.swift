//
//  widget_deck.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import Foundation

class Deck{
    // デッキおよびホールカードの操作、コンボの判定などカード操作を担当するクラス
    var deck:[String] =
    ["2c", "2d", "2h", "2s",
    "3c", "3d", "3h", "3s",
    "4c", "4d", "4h", "4s",
    "5c", "5d", "5h", "5s",
    "6c", "6d", "6h", "6s",
    "7c", "7d", "7h", "7s",
    "8c", "8d", "8h", "8s",
    "9c", "9d", "9h", "9s",
    "Tc", "Td", "Th", "Ts",
    "Jc", "Jd", "Jh", "Js",
    "Qc", "Qd", "Qh", "Qs",
    "Kc", "Kd", "Kh", "Ks",
    "Ac", "Ad", "Ah", "As"]
    var rankArray:Array<String> = ["2", "3", "4", "5", "6", "7",
                            "8", "9", "T", "J", "Q", "K", "A"]
    var hollcard1 = "Ad"
    var hollcard2 = "Ac"
    var rank1 = "A"
    var rank2 = "A"
    var mark1 = "d"
    var mark2 = "c"
    var rank1num: Int? = 14
    var rank2num: Int? = 14
    var combo = "AA"
    
    func initcard() -> Void{
        // init card
        deck.shuffle()
        hollcard1 = deck[0]
        hollcard2 = deck[1]
        rank1 = String(self.hollcard1.prefix(1))
        mark1 = String(self.hollcard1.suffix(1))
        rank2 = String(self.hollcard2.prefix(1))
        mark2 = String(self.hollcard2.suffix(1))
        rank1num = self.rankArray.firstIndex(of: self.rank1)!
        rank2num = self.rankArray.firstIndex(of: self.rank2)!
        
        // init combo
        if self.rank1num == self.rank2num {
            self.combo = self.rank1 + self.rank2
        } else if self.rank1num! > self.rank2num! {
            if self.mark1 == self.mark2{
                self.combo = self.rank1 + self.rank2 + "s"

            } else{
                self.combo = self.rank1 + self.rank2 + "o"
            }

        } else {
            if self.mark1 == self.mark2{
                self.combo = self.rank2 + self.rank1 + "s"
            } else{
                self.combo = self.rank2 + self.rank1 + "o"
            }

        }
    }
}
