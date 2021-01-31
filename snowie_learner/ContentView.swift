//
//  ContentView.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import SwiftUI

struct ContentView: View {
    // タイトル画面の次のメニュー画面を担当する構造体
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: OpenraiseMenu()){
                    Text("open raise")}
                           
                NavigationLink(destination: FaceraiseMenu()){
                    Text("faceing raise")}
                }
                
            }
            
        }
    }


struct OpenraiseMenu: View {
    // openraise_quizを担当する構造体
    @State var positions = ["UTG", "MP", "CUTOFF", "BUTTON"]
    var body: some View{
        NavigationView{
        List {
            ForEach(positions, id: \.self){ position in
                NavigationLink(destination: GameOpenRaise(hero_position: position)){
                    Text(position)
                }
            }
            }
        }
    }
}

struct FaceraiseMenu: View {
    // face_raise_quizを担当する構造体
    @State var positions = ["MP", "CUTOFF", "BUTTON", "SB", "BB"]
    var body: some View {
        NavigationView{
        List {
            ForEach(positions, id: \.self){ position in
                NavigationLink(destination: GameFaceRaise(hero_position: position)){
                    Text(position)
                }
            }
            }
        }
    }
}

struct GameOpenRaise: View {
    // 実際のゲーム画面を担当する構造体
    var hero_position: String = "UTG"
    var body: some View {
        OpenRaiseView(hero_position: hero_position,
                      herodict: open_raise_dict[hero_position]!)
            .padding(0.0)
    }
}

struct GameFaceRaise: View {
    // 実際のゲーム画面を担当する構造体
    var hero_position: String = "MP"
    var body: some View {
        FacingRaiseView(hero_position: hero_position,
                        herodict: face_raise_dict[hero_position]!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
