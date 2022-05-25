//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 12/04/22.
//

import Foundation
import SwiftUI
import UIKit

struct MenuView: View {
    @EnvironmentObject var appState: AppState
    var body: some View{
        VStack(){
            ZStack{
                Text("JUNGLE\nRESCUE")
                    .font(.custom(.mainFont, size: CGFloat(mainTitleSize)))
                    .fontWeight(.black)
                    .foregroundColor(primaryColor)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)
            }
            Button(action: {
                appState.viewNumber = 1
                playSoundEffects(sound: "buttonClick", type: "mp3")
            }, label: {
                Image(uiImage: UIImage(imageLiteralResourceName: "PlayButton"))
            })
            
            Button(action: {
                playSoundEffects(sound: "buttonClick", type: "mp3")
                appState.viewNumber = 3
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 2*UIScreen.main.bounds.size.width/5, height:UIScreen.main.bounds.size.height/10 , alignment: .center)
                        .foregroundColor(primaryColor)
                    Text("Credits")
                        .fontWeight(.black)
                        .font(.custom(.titleFont, size: CGFloat(textSize)))
                        .foregroundColor(ternaryColor)
                        .padding(.top, 10)
                }
            })
            .padding(.top, 50)
        }
        .onAppear(perform: {
            playSoundbg(sound: "jungleBackGround", type: "mp3")
        })
        .background(Image(uiImage:UIImage(imageLiteralResourceName: "MainBG")).resizable().frame(width: 3000, height: 3000, alignment: .center))
    }
}
