//
//  view_openraise.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import Foundation
import SwiftUI

struct OpenRaiseView: View {
    // 実際のゲーム画面を写す構造体である。
    
    @State var deck = Deck()
    @State var cardlist:Array<Image> = [Image("Ad"), Image("Ac")]
    @State var score: Int = 0
    @State var showingAlert = false
    @State var error: AlertError?
    @State var showImage = false
    // 以下の2つの変数は受け取る
    var hero_position: String = "UTG"
    var herodict = open_raise_dict["UTG"]!
    
    func changecard() -> Void{
        deck.initcard()
        cardlist[0] = Image(deck.hollcard1)
        cardlist[1] = Image(deck.hollcard2)
    }
    
    
    func raiseaction() -> Void{
        if herodict.contains(deck.combo){
            self.score += 1
        } else{
            self.score = 0
            self.error = AlertError(title: "ミス",
                                    message: deck.combo + "はopenハンドではないです",
                                    ok: "ok")
        }
        changecard()
    }
    
    
    func foldaction() -> Void{
        if herodict.contains(deck.combo){
            self.score = 0
            self.error = AlertError(title: "ミス",
                                    message: deck.combo + "はopenハンドです",
                                    ok: "ok")
        } else {
            self.score += 1
        }
        changecard()
        
    }
    
    var body: some View{
        
        ZStack{
            VStack{
            HStack{
                cardlist[0]
                    .resizable()
                    .frame(width: 100.0, height: 150.0, alignment: .leading)
                cardlist[1]
                    .resizable()
                    .frame(width: 100.0, height: 150.0, alignment: .leading)
                  }
                VStack{
                    Text(hero_position + " score: " + String(score))
                }
            HStack{
                Button(action: raiseaction) {
                    Text("open").frame(width: 150, height: 200)
                }.foregroundColor(.black)
                
                
                Button(action: foldaction) {
                    Text("fold").frame(width: 150, height: 200)
                }.foregroundColor(.black)
                
                .alert(item: $error) { error in
                    Alert(title: Text(error.title),
                          message: Text(error.message),
                          dismissButton: .default(Text(error.ok)))
                }
                }
                Text("show range")
                    .onTapGesture {
                        self.showImage.toggle()}
                    .frame(width: 100, height: 50)
                }
            if showImage {
                open_raise_image_dict[hero_position]!
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    self.showImage.toggle()}
            }
    }
    }
    
}

