//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 19/04/22.
//

import Foundation
import SpriteKit
import SwiftUI

class DefeatScene: SKScene {    
    var titleLabel: SKLabelNode = SKLabelNode()
    var subTitleLabel: SKLabelNode = SKLabelNode()
    var scoreLabel: SKLabelNode = SKLabelNode()
    var tryAgainButton: SKShapeNode = SKShapeNode(circleOfRadius: 80)
    

    override func didMove(to view: SKView) {
        self.backgroundColor = .clear
        setup()
    }
    
    func setup(){
        createTitleLabel()
        createSubTitleLabel()
        createScoreLabel()
        createButton()
    }
    
    func createTitleLabel(){
        titleLabel.text = "Game Over"
        titleLabel.fontSize = CGFloat(intermediateSize)
        titleLabel.fontColor = UIColor(primaryColor)
        titleLabel.fontName = "SHRIMP"
        titleLabel.position = CGPoint(x: self.size.width/2, y: 3*self.size.height/4)
        addChild(titleLabel)
    }
    
    func createSubTitleLabel(){
        subTitleLabel.text = "Your Score:"
        subTitleLabel.fontSize = CGFloat(textSize)
        subTitleLabel.fontColor = UIColor(primaryColor)
        subTitleLabel.fontName = "SHRIMP"
        subTitleLabel.position = CGPoint(x: self.size.width/2, y: 3*self.size.height/5)
        addChild(subTitleLabel)
    }
    
    func createScoreLabel(){
        scoreLabel.text = String(score)
        scoreLabel.fontSize = CGFloat(mainTitleSize + 20 - 50)
        scoreLabel.fontColor = UIColor(primaryColor)
        scoreLabel.fontName = "SHRIMP"
        scoreLabel.position = CGPoint(x: self.size.width/2, y: 9*self.size.height/20)
        addChild(scoreLabel)
    }
    
    func createButton(){
        let text = SKTexture(imageNamed: "PlayButton")
        tryAgainButton.fillTexture = text
        tryAgainButton.strokeColor = .clear
        tryAgainButton.fillColor = .white
        tryAgainButton.name = "playAgain"
        tryAgainButton.position = CGPoint(x: self.size.width/2, y: self.size.height/4)
        addChild(tryAgainButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let positionOfTouch = touch!.location(in: self)
        let touchedNode = self.atPoint(positionOfTouch)
        
        if let name = touchedNode.name {
            if name == "playAgain"{
                score = 0
                nLifes = 4
                let scene: SKScene
                scene = GameScene(size: self.size)
                self.view?.presentScene(scene)
                return
            }
        }
    }
}
