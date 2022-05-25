//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 12/04/22.
//

import Foundation
import SwiftUI

struct TutorialView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View{
        VStack{
            Text("We\nneed\nyour help!")
                .font(.custom(.titleFont, size: CGFloat(mainTitleSize - 50)))
                .fontWeight(.black)
                .foregroundColor(primaryColor)
                .multilineTextAlignment(.center)
                .padding(.top, 45)
            ZStack{
                Rectangle()
                    .fill(secondaryColor)
                    .padding(30)
                Text("Click the trash\nbefore it pollutes\nour forest.")
                    .font(.custom(.titleFont, size: CGFloat(textSize)))
                    .fontWeight(.black)
                    .foregroundColor(primaryColor)
                    .multilineTextAlignment(.center)
                    .padding(20)
            }
            Button(action: {
                appState.viewNumber = 2
                playSoundEffects(sound: "buttonClick", type: "mp3")
            }, label: {
                Image(uiImage: UIImage(imageLiteralResourceName: "PlayButton"))
                    .padding(.top, 30)
            })
        }
        .background(Image(uiImage:UIImage(imageLiteralResourceName: "MainBG")).resizable().frame(width: 3000, height: 3000, alignment: .center))
    }
}
