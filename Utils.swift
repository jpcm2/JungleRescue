//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 15/04/22.
//

import Foundation
import SwiftUI
import SpriteKit

var primaryColor = Color(red: 120/255, green: 1/255, blue: 22/255)
var secondaryColor = Color(red: 184/255, green: 202/255, blue: 51/255, opacity: 0.5)
var ternaryColor = Color(red: 184/255, green: 202/255, blue: 51/255, opacity: 1.0)
var mainTitleSize = 120
var intermediateSize = 60
var textSize = 45
let NItems: Int = 220
var nLifes: Int = 4
var score: Int = 0

class Item{
    var isBad: Bool!
    var vel: CGFloat!
    var isActive: Bool!
    var element: SKShapeNode = SKShapeNode(circleOfRadius: 42)
    var typeOfItem: String!
    
    init(txt: SKTexture, isBad: Bool, vel: CGFloat, position: CGPoint, name: String, typeOfItem: String){
        self.element.fillColor = .white
        self.element.lineWidth = 0
        self.element.fillTexture = txt
        self.isBad = isBad
        self.vel = vel
        self.isActive = true
        self.element.position = position
        self.element.name = name
        self.typeOfItem = typeOfItem
    }
}
