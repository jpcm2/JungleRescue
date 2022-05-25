//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 19/04/22.
//

import Foundation
import SwiftUI

struct CreditsView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View{
        GeometryReader{ tam in
            VStack{
                Text("Credits")
                    .font(.custom(.titleFont, size: CGFloat(textSize - 10)))
                    .padding([.top, .horizontal], 30)
                    .foregroundColor(primaryColor)
                ZStack{
                    Rectangle()
                        .fill(secondaryColor)
                        .padding([.horizontal, .bottom],30)
                        .frame(width: tam.size.width, height: 3*tam.size.height/4, alignment: .center)
                    ScrollView{
                        VStack(spacing: 20){
                            Text("Main Background: https://br.freepik.com/vetores-gratis/plano-de-fundo-detalhado-da-selva_13859419.htm , Author: freepik")
                                .padding(.horizontal, 40)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Flame image: https://www.flaticon.com/free-icon/bonfire_1249084 , Author: smalllikeart")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Trash Image: https://www.flaticon.com/free-icon/bin_1242145 , Author: srip")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Wheel Image: https://www.flaticon.com/free-icon/wheel_1242884 , Author: Pixel Perfect")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Axe Image: https://www.flaticon.com/free-icon/axe_998899 , Author: Freepik")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Tree Image: https://www.flaticon.com/free-icon/tree_490091, Author: Freepik")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Heart Image: https://www.flaticon.com/free-icon/heart_1243929, Author: Pixel Perfect")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Monkey Icon: https://www.flaticon.com/free-icon/monkey_863130, Author: mynamepong")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Snake Icon: https://www.flaticon.com/free-icon/snake_1137132, Author: Smashicons")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Banana Icon: https://www.flaticon.com/free-icon/banana_1135549, Author: Freepik")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                        }
                        .padding(.bottom, 20)
                        VStack(spacing: 20){
                            Text("BackGround Music: https://freesound.org/people/VABsounds/sounds/381384/, Author: VABsounds")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Button Sound: https://freesound.org/people/rolandseer/sounds/489008/, Author: rolandseer")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Axe Sound: https://freesound.org/people/wavecal22/sounds/537435/, Author: wavecal22")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Monkey Sound: https://freesound.org/people/wilika2/sounds/588625/, Author: wilika2")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Metal Sound: https://freesound.org/people/ChristianAnd/sounds/468837/, Author: ChristianAnd")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Wrong Sound: https://freesound.org/people/Bertrof/sounds/351565 , Author: Bertrof")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Wheel Sound: https://freesound.org/people/jorickhoofd/sounds/160045/ , Author: jorickhoofd")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("Flame sound on click: https://freesound.org/people/Reitanna/sounds/242867/, Author: Reitanna")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("SHRIMP font: https://befonts.com/shrimp-typeface.html , Author: Anton Darri Pálmarsson")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                            Text("IceCreamPartySolid font: https://befonts.com/icecreamparty-font.html , Author: Igor Grovich")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                        }
                        .padding(.bottom, 20)
                        VStack(spacing: 20){
                            Text("Change Text Fonts Code : https://github.com/alnp/Custom-font-in-Swift-Playgrounds-App, Author: Alessandra Luana Nascimento Pereira")
                                .padding(.horizontal, 30)
                                .font(.custom(.titleFont, size: CGFloat(textSize - 30)))
                                .foregroundColor(primaryColor)
                        }
                    }
                    .frame(width: tam.size.width, height: 13*tam.size.height/20, alignment: .center)
                }
                Button(action: {
                    appState.viewNumber = 0
                    playSoundEffects(sound: "buttonClick", type: "mp3")
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 2*UIScreen.main.bounds.size.width/3, height:UIScreen.main.bounds.size.height/10 , alignment: .center)
                            .foregroundColor(primaryColor)
                        Text("Menu")
                            .fontWeight(.black)
                            .font(.custom(.titleFont, size: CGFloat(textSize)))
                            .foregroundColor(.yellow)
                    }
                })
            }
            .background(Image(uiImage:UIImage(imageLiteralResourceName: "MainBG")).resizable().frame(width: 3000, height: 3000, alignment: .center))
        }
    }
}
