//
//  File.swift
//  SaveTheEnvironment
//
//  Created by jpcm2 on 18/04/22.
//

import Foundation
import AVFoundation

var audioPlayerbg: AVAudioPlayer = AVAudioPlayer()
var audioPlayerEffects: AVAudioPlayer = AVAudioPlayer()

func playSoundbg(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayerbg = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerbg.numberOfLoops = -1
            audioPlayerbg.volume = 0.5
            audioPlayerbg.play()
        }catch{
            print("ERROR: Could not find and play the sound file")
        }
    }
}

func playSoundEffects(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayerEffects = try AVAudioPlayer.init(contentsOf: URL(fileURLWithPath: path))
            audioPlayerEffects.volume = 0.6
            audioPlayerEffects.play()
        }catch{
            print("ERROR: Could not find and play the sound file")
        }
    }
}
