//
//  ContentView.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 15/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

struct ContentView: View {
    @ObservedObject var appState = AppState()
    var cena: SKScene{
        let ret = GameScene()
        ret.scaleMode = .resizeFill
        return ret
    }
    
    var body: some View {
        if appState.viewNumber == 0{
            MenuView()
                .environmentObject(appState)
        }else if appState.viewNumber == 3 {
            CreditsView()
                .environmentObject(appState)
        }else if appState.viewNumber == 1{
            TutorialView()
                .environmentObject(appState)
        }else if appState.viewNumber == 2 {
            ZStack{
                SpriteView(scene: cena, options: .allowsTransparency)
                    .ignoresSafeArea()
            }
            .background(Image(uiImage:UIImage(imageLiteralResourceName: "MainBG")).resizable().frame(width: 3000, height: 3000, alignment: .center))
        }
    }
}
