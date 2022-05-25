//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 15/04/22.
//

import Foundation
import SpriteKit
import SwiftUI
import Combine

class GameScene: SKScene {
    @EnvironmentObject var appState: AppState
    var renderTime: TimeInterval = 0.0
    var changeTime: TimeInterval = 1.0
    var seconds: Int = 0
    var minutes: Int = 0
    var eltos: [Item] = []
    var lifes: [SKShapeNode] = []
    let txt: [String] = ["axe", "tree", "wheel", "garbage", "flame", "banana", "monkey", "snake","axe","wheel", "garbage", "flame" ]
    //["wheel","flame]
    var timerLabel: SKLabelNode = SKLabelNode()
    var howMany: Int = 0
    
    override public func didMove(to view: SKView) {
        self.backgroundColor = .clear
        setup()
    }
    
    override public func update(_ currentTime: TimeInterval) {
        updateTimer(currentTimex: currentTime)
        updatePosition()
        if howMany == NItems {
            let scene: SKScene
            scene = WinScene(size: self.size)
            self.view?.presentScene(scene)
            return
        }
        print(howMany)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let positionOfTouch = touch!.location(in: self)
        let touchedNode = self.atPoint(positionOfTouch)
        
        if let name = touchedNode.name {
            for elementoAtual in eltos {
                if name == elementoAtual.element.name{
                    elementoAtual.isActive = false
                    howMany = howMany + 1
                    if elementoAtual.typeOfItem == "monkey"{
                        playSoundEffects(sound: "monkey-noise", type: "mp3")
                        updateLife()
                    }
                    if elementoAtual.typeOfItem == "tree" || elementoAtual.typeOfItem == "banana" || elementoAtual.typeOfItem == "snake" {
                        playSoundEffects(sound: "wrong", type: "mp3")
                        updateLife()
                    }
                    if elementoAtual.typeOfItem == "axe" {
                        playSoundEffects(sound: "axe-broken", type: "mp3")
                        score = score + 1
                    }
                    if(elementoAtual.typeOfItem == "garbage"){
                        playSoundEffects(sound: "metal-sound", type: "mp3")
                        score = score + 1
                    }
                    if(elementoAtual.typeOfItem == "flame"){
                        playSoundEffects(sound: "flame-onclick", type: "wav")
                        score = score + 1
                    }
                    if(elementoAtual.typeOfItem == "wheel"){
                        playSoundEffects(sound: "wheelSound", type: "mp3")
                        score = score + 1
                    }
                    if(score == NItems){
                        let scene: SKScene
                        scene = WinScene(size: self.size)
                        self.view?.presentScene(scene)
                        return
                    }
                    continue
                }
            }
        }
    }
    
    func setup(){
        createTimer()
        createElement()
        createLife()
    }
    
    func createTimer(){
        timerLabel.text = "00 : 00"
        timerLabel.position = CGPoint(x: 4*self.size.width/5, y: 9*self.size.height/10)
        timerLabel.fontColor = UIColor(primaryColor)
        timerLabel.fontSize = 40
        timerLabel.fontName = "SHRIMP"
        addChild(timerLabel)
    }
    
    func createElement(){
        for i in 0...NItems {
            let temp: String = txt.randomElement()!
            let textureTemp = SKTexture(imageNamed: temp)
            var bad = true
            var vel: CGFloat
            let elemento: Item!
            var x = 25 + 100*i*[1,-1].randomElement()!
            let name: String = "Elemento_\(i)"
            if x < 0 {
                while x < 0{
                    x = x + Int(self.size.width)
                }
            }
            x = x % Int(self.size.width)
            let y = Int(frame.size.height) + i*350
            print(x, y)
            vel = 3.0 + CGFloat(i)*0.03
            vel = min(vel, 9)
            if(temp == "tree" || temp == "banana" || temp == "monkey" || temp == "snake"){
                bad = false
            }
            elemento = Item(txt: textureTemp, isBad: bad, vel: vel, position: CGPoint(x: x , y: y), name: name, typeOfItem: temp)
            eltos.append(elemento)
            addChild(eltos[i].element)
        }
    }
    
    func createLife(){
        let lifeText = SKTexture(imageNamed: "heart.png")
        let radius = self.size.height/60
        for i in 0...nLifes - 1{
            let lifeNode: SKShapeNode  = SKShapeNode(circleOfRadius: radius)
            lifeNode.fillColor = .white
            lifeNode.fillTexture = lifeText
            lifeNode.lineWidth = 0
            lifeNode.position = CGPoint(x: self.size.width/10 + CGFloat(2*Int(radius)*i), y: 9*self.size.height/10 + radius)
            lifes.append(lifeNode)
            addChild(lifes[i])
        }
    }
    
    func updateTimer(currentTimex: TimeInterval){
        if currentTimex > renderTime{
            if renderTime > 0{
                seconds = seconds + 1
                if(seconds == 60){
                    seconds = 0
                    minutes = minutes + 1
                }
                let MinutesStr: String = minutes < 10 ? "0\(minutes)":"\(minutes)"
                let SecondsStr: String = seconds < 10 ? "0\(seconds)":"\(seconds)"
                timerLabel.text = "\(MinutesStr) : \(SecondsStr)"
            }
            renderTime = currentTimex + changeTime
        }
    }
    
    func updatePosition(){
        for elementoAtual in eltos {
            elementoAtual.element.removeFromParent()
            elementoAtual.element.position.y -= elementoAtual.vel
            if elementoAtual.element.position.y < 0 && elementoAtual.isActive == true {
                howMany = howMany + 1
            }
            if(elementoAtual.element.position.y < 0 && elementoAtual.isActive == true && elementoAtual.isBad == true){
                elementoAtual.isActive = false
                updateLife()
            }
            if(elementoAtual.element.position.y < 0 || elementoAtual.isActive == false){
                elementoAtual.isActive = false
                continue
            }
            addChild(elementoAtual.element)
        }
    }
    
    func updateLife() {
        for elementoAtual in lifes{
            elementoAtual.removeFromParent()
        }
        nLifes = nLifes - 1
        print(nLifes)
        if nLifes == 0{
            let scene: SKScene
            scene = DefeatScene(size: self.size)
            self.view?.presentScene(scene)
            return
        }
        for i in 0...nLifes-1{
            addChild(lifes[i])
        }
    }
}
