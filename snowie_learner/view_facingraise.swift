//
//  view_facingraise.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import Foundation
import SwiftUI

struct FacingRaiseView: View {
    // 実際のゲーム画面を写す構造体である。
    
    // variable we use
    @State var deck = Deck()
    @State var cardlist:Array<Image> = [Image("Ad"), Image("Ac")]
    @State var villians_position_list: Array = ["UTG", "MP", "CUTOFF", "BUTTON", "SB"]
    @State var villians_position_count: Int = 0
    @State var villians_position: String = "UTG"
    @State var score: Int = 0
    @State var showingAlert = false
    @State var error: AlertError?
    @State var showImage = false
    var hero_position: String = "MP"
    var herodict = face_raise_dict["MP"]!
    
    //　function we use
    func changecard() -> Void{
        deck.initcard()
        cardlist[0] = Image(deck.hollcard1)
        cardlist[1] = Image(deck.hollcard2)
    }
    
    func changevillian() -> Void{

        self.villians_position_count += 1
        if self.villians_position_count >= 4{
            // 4上の時に0に戻す
            self.villians_position_count = 0
        }
        
        // 以下のif文で制限をかける、書き方がダサい。
        if self.hero_position == "MP" {
            self.villians_position_count = 0
        } else if (self.hero_position == "CUTOFF" && self.villians_position_count >= 2){
            self.villians_position_count = 0
        } else if (self.hero_position == "BUTTON" && self.villians_position_count >= 3){
            self.villians_position_count = 0
        } else if (self.hero_position == "SB" && self.villians_position_count >= 4){
            self.villians_position_count = 0
        }
    
        self.villians_position = self.villians_position_list[self.villians_position_count]
        
    }
    
    func raiseaction() -> Void{
        let villiansdict = herodict[villians_position]!
        if villiansdict["raise"]!.contains(deck.combo){
            self.score += 1
        } else{
            self.score = 0
            // エラー表示
            if villiansdict["call"]!.contains(deck.combo){
                self.error = AlertError(title: "ミス",
                                        message: deck.combo + "はcallハンドです",
                                        ok: "ok")
            } else {
                self.error = AlertError(title: "ミス",
                                        message: deck.combo + "はfoldハンドです",
                                        ok: "ok")
            }
        }
        changecard()
    }
    
    func callaction() -> Void{
        let villiansdict = herodict[villians_position]!
        if villiansdict["call"]!.contains(deck.combo){
            self.score += 1
        } else{
            self.score = 0
            // エラー表示
            if villiansdict["raise"]!.contains(deck.combo){
                self.error = AlertError(title: "ミス",
                                        message: deck.combo + "は3betハンドです",
                                        ok: "ok")
            } else {
                self.error = AlertError(title: "ミス",
                                        message: deck.combo + "はfoldハンドです",
                                        ok: "ok")
            }

        }
        changecard()
    }
    
    func foldaction() -> Void{
        let villiansdict = herodict[villians_position]!
        if villiansdict["raise"]!.contains(deck.combo){
            self.score = 0
            // エラー表示
            self.error = AlertError(title: "ミス",
                                    message: deck.combo + "は3betハンドです",
                                    ok: "ok")
        } else if villiansdict["call"]!.contains(deck.combo){
            self.score = 0
            // エラー表示
            self.error = AlertError(title: "ミス",
                                    message: deck.combo + "はcallハンドです",
                                    ok: "ok")
        } else{
            self.score += 1
        }
        changecard()
        
    }
    
    // body
    var body: some View{
        ZStack{
        VStack{
        HStack{
            cardlist[0]
                .resizable()
                .frame(width: 100.0, height: 150.0, alignment: .leading)
            cardlist[1]
                .resizable()
                .frame(width: 100.0, height: 150.0, alignment: .leading)}
        
        VStack{
            Text(hero_position + " score: " + String(score))
            Button(action: changevillian) {
                Text("villian: " + villians_position)
            }.foregroundColor(.black)
            }
        
        HStack{
            Button(action: raiseaction) {
                Text("3bet").frame(width: 100, height: 200)
            }.foregroundColor(.black)
            
            Button(action: callaction) {
                Text("call").frame(width: 100, height: 200)
            }.foregroundColor(.black)
            
            Button(action: foldaction) {
                Text("fold").frame(width: 100, height: 200)
            }.foregroundColor(.black)
            
            .alert(item: $error) { error in
                Alert(title: Text(error.title),
                      message: Text(error.message),
                      dismissButton: .default(Text(error.ok)))}}
            Text("show range")
                .onTapGesture {
                    self.showImage.toggle()}
                .frame(width: 100, height: 50)
            Spacer()

        }
            if showImage {
                face_raise_image_dict[hero_position]![villians_position]!
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .onTapGesture {
                        self.showImage.toggle()}
            }
    }


}

}

